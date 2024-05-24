#include "uart_interface.h"
#include <stdlib.h>
#include "apu_writer.h"
#include "apu.h"

XUartLite usb_uart;

int initialize_uart(XIntc *InterruptController) {
    int Status;

    Status = XUartLite_Initialize(&usb_uart, STDOUT_BASEADDRESS);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    XUartLite_SetRecvHandler(&usb_uart, (XUartLite_Handler)uart_handler, &usb_uart);
    XUartLite_SetSendHandler(&usb_uart, (XUartLite_Handler)dummy_handler, &usb_uart);
    XUartLite_EnableInterrupt(&usb_uart);

    return XST_SUCCESS;
}

int connect_uart_interrupt(XIntc *InterruptController)
{
    int Status;

	// Connect the UART interrupt handler
    Status = XIntc_Connect(InterruptController, UART_INT_ID, (XInterruptHandler)XUartLite_InterruptHandler, &usb_uart);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}

void enable_uart_interrupt(XIntc *InterruptController)
{
    // Enable the UART interrupt
    XIntc_Enable(InterruptController, UART_INT_ID);
}

void uart_handler(void *CallbackRef, unsigned int ByteCount)
{
    XUartLite *uart = (XUartLite*)CallbackRef;

    static char command[COMMAND_BUFFER + 1] = {'\0'};
    static uint8_t length = 0;

    u8 c;
    XUartLite_Recv(uart, &c, 1);
    if (c >= 32 && c <= 126)
    {
        if (length < COMMAND_BUFFER)
        {
            XUartLite_Send(uart, &c, 1);
            command[length++] = (char)c;
        }
    }
    else if (c == 127)
    {
        if (length > 0)
        {
            XUartLite_Send(uart, &c, 1);
            command[--length] = '\0';
        }
    }
    else if (c == 10 || c == 13)
    {
        uart_transmit(uart, "\r\n", 2);

        if (length > 0) {
            uart_transmit(uart, "\r\n", 2);
            // uart_transmit(uart, TERMINAL_SEPARATOR, 82);

            char *arguments;
            pop_word(command, arguments);

            if (strcmp(command, "?") == 0) { run_help(uart); }
            else if (strcmp(command, "help") == 0) { run_help(uart); }
            else if (strcmp(command, "status") == 0) { run_status(uart); }
            else if (strcmp(command, "toggle") == 0) { run_toggle(uart, arguments); }
            else if (strcmp(command, "enable") == 0) { run_enable(uart, arguments); }
            else if (strcmp(command, "disable") == 0) { run_disable(uart, arguments); }
            else if (strcmp(command, "stop") == 0) { run_stop(uart, arguments); }
            else if (strcmp(command, "octave") == 0) { run_octave(uart, arguments); }
            else if (strcmp(command, "semitone") == 0) { run_semitone(uart, arguments); }
            else { uart_transmit_auto(uart, "Invalid command.\r\n"); }

            // uart_transmit(uart, "\r\n", 2);
            uart_transmit(uart, TERMINAL_SEPARATOR, 82);
            
            memset(command, '\0', length);
            length = 0;
        }
    }
}

void dummy_handler(void *CallbackRef, unsigned int ByteCount) {}

void uart_transmit_auto(XUartLite* uart, const char* data)
{
    uart_transmit(uart, data, strlen(data));
}

void uart_transmit(XUartLite* uart, const char* data, unsigned int length)
{
    unsigned int transmitted = 0;
    while (transmitted < length)
    {
        while (XUartLite_IsSending(uart)) {}
        transmitted += XUartLite_Send(uart, (u8*)&data[transmitted], length - transmitted);
    }
}

void pop_word(const char* string, char*& remainder)
{
    remainder = (char*)strchr(string, ' ');
    if (remainder != nullptr)
    {
        *remainder = '\0';
        remainder++;
    }
}

// Based on outnum in xil_printf.c
void print_long(XUartLite* uart, long number, uint8_t base)
{
    const char digits[] = "0123456789ABCDEF";
    char buffer[10] = {'\0'};
    uint8_t length = 0;

    if (number < 0)
    {
        do
        {
            buffer[9 - length] = digits[-1 * (number % base)];
            number /= base;
            length++;
        } while (number < 0);

        uart_transmit(uart, "-", 1);
    }
    else
    {
        do
        {
            buffer[9 - length] = digits[number % base];
            number /= base;
            length++;
        } while (number > 0);
    }
    
    uart_transmit(uart, &buffer[10 - length], length); 
}

void print_channel_state(XUartLite* uart)
{
    uint8_t status = get_channel_state();
    uart_transmit_auto(uart, "Pulse 1: ");
    uart_transmit_auto(uart, (status & PULSE_1_MASK)   ? "On" : "Off");
    uart_transmit_auto(uart, ", Pulse 2: ");
    uart_transmit_auto(uart, (status & PULSE_2_MASK)   ? "On" : "Off");
    uart_transmit_auto(uart, ", Triangle: ");
    uart_transmit_auto(uart, (status & TRIANGLE_MASK)  ? "On" : "Off");
    uart_transmit_auto(uart, ", Noise: ");
    uart_transmit_auto(uart, (status & NOISE_MASK)     ? "On" : "Off");
    uart_transmit_auto(uart, ", DMC: ");
    uart_transmit_auto(uart, (status & DMC_MASK)       ? "On" : "Off");
    uart_transmit_auto(uart, "\r\n");
}

void print_shift_state(XUartLite* uart)
{
    int8_t number;

    uart_transmit_auto(uart, "Octave Shift: ");

    number = get_octave_shift();
    if (number > 0) { uart_transmit(uart, "+", 1); }
    print_long(uart, number);
    
    uart_transmit_auto(uart, ", Semitone Shift: ");

    number = get_semitone_shift();
    if (number > 0) { uart_transmit(uart, "+", 1); }
    print_long(uart, number);
    
    uart_transmit_auto(uart, "\r\n");
}

void run_help(XUartLite* uart)
{
    uart_transmit_auto(uart, "help|?\r\n");
    uart_transmit_auto(uart, "status\r\n");
    uart_transmit_auto(uart, "toggle [all|pulse1|pulse2|triangle|noise|dmc]\r\n");
    uart_transmit_auto(uart, "enable [all|pulse1|pulse2|triangle|noise|dmc]\r\n");
    uart_transmit_auto(uart, "disable [all|pulse1|pulse2|triangle|noise|dmc]\r\n");
    uart_transmit_auto(uart, "stop [all|pulse1|pulse2|triangle|noise|dmc]\r\n");
    uart_transmit_auto(uart, "octave #|+#|-#\r\n");
    uart_transmit_auto(uart, "semitone #|+#|-#\r\n");
}

void run_status(XUartLite* uart)
{
    print_channel_state(uart);
    print_shift_state(uart);
}

void run_toggle(XUartLite* uart, const char* arguments)
{
    uint8_t mask = 0;
    char* arg = (char*)arguments;
    char* args;
    while (arg != nullptr)
    {
        pop_word(arg, args);
        if (strcmp(arg, "all") == 0) { mask |= CHANNEL_MASK; }
        else if (strcmp(arg, "pulse1") == 0) { mask |= PULSE_1_MASK; }
        else if (strcmp(arg, "pulse2") == 0) { mask |= PULSE_2_MASK; }
        else if (strcmp(arg, "triangle") == 0) { mask |= TRIANGLE_MASK; }
        else if (strcmp(arg, "noise") == 0) { mask |= NOISE_MASK; }
        else if (strcmp(arg, "dmc") == 0) { mask |= DMC_MASK; }
        arg = args;
    }
    if (mask)
    {
        set_channel_state(get_channel_state() ^ mask);
        print_channel_state(uart);
    }
    else
    {
        uart_transmit_auto(uart, "No valid arguments. Nothing has been changed.\r\n");
    }
}

void run_enable(XUartLite* uart, const char* arguments)
{
    uint8_t mask = 0;
    char* arg = (char*)arguments;
    char* args;
    while (arg != nullptr)
    {
        pop_word(arg, args);
        if (strcmp(arg, "all") == 0) { mask |= CHANNEL_MASK; }
        else if (strcmp(arg, "pulse1") == 0) { mask |= PULSE_1_MASK; }
        else if (strcmp(arg, "pulse2") == 0) { mask |= PULSE_2_MASK; }
        else if (strcmp(arg, "triangle") == 0) { mask |= TRIANGLE_MASK; }
        else if (strcmp(arg, "noise") == 0) { mask |= NOISE_MASK; }
        else if (strcmp(arg, "dmc") == 0) { mask |= DMC_MASK; }
        arg = args;
    }
    if (mask)
    {
        enable_channel(mask);
        print_channel_state(uart);
    }
    else
    {
        uart_transmit_auto(uart, "No valid arguments. Nothing has been changed.\r\n");
    }
}

void run_disable(XUartLite* uart, const char* arguments)
{
    uint8_t mask = 0;
    char* arg = (char*)arguments;
    char* args;
    while (arg != nullptr)
    {
        pop_word(arg, args);
        if (strcmp(arg, "all") == 0) { mask |= CHANNEL_MASK; }
        else if (strcmp(arg, "pulse1") == 0) { mask |= PULSE_1_MASK; }
        else if (strcmp(arg, "pulse2") == 0) { mask |= PULSE_2_MASK; }
        else if (strcmp(arg, "triangle") == 0) { mask |= TRIANGLE_MASK; }
        else if (strcmp(arg, "noise") == 0) { mask |= NOISE_MASK; }
        else if (strcmp(arg, "dmc") == 0) { mask |= DMC_MASK; }
        arg = args;
    }
    if (mask)
    {
        disable_channel(mask);
        run_status(uart);
    }
    else
    {
        uart_transmit_auto(uart, "No valid arguments. Nothing has been changed.\r\n");
    }
}

void run_stop(XUartLite* uart, const char* arguments)
{
    bool pulse1 = false;
    bool pulse2 = false;
    bool triangle = false;
    bool noise = false;
    bool dmc = false;
    char* arg = (char*)arguments;
    char* args;
    while (arg != nullptr)
    {
        pop_word(arg, args);
        if (strcmp(arg, "all") == 0) 
        {
            pulse1 = true;
            pulse2 = true;
            triangle = true;
            noise = true;
            dmc = true;
        }
        else if (strcmp(arg, "pulse1") == 0) { pulse1 = true; }
        else if (strcmp(arg, "pulse2") == 0) { pulse2 = true; }
        else if (strcmp(arg, "triangle") == 0) { triangle = true; }
        else if (strcmp(arg, "noise") == 0) { noise = true; }
        else if (strcmp(arg, "dmc") == 0) { dmc = true; }
        arg = args;
    }
    if (pulse1 || pulse2 || triangle || noise || dmc)
    {
        if (pulse1) { stop_notes(0); }
        if (pulse2) { stop_notes(1); }
        if (triangle) { stop_notes(2); }
        if (noise) { stop_notes(3); }
        if (dmc) { stop_notes(4); }
        uart_transmit_auto(uart, "Channels have been silenced.\r\n");
    }
    else
    {
        uart_transmit_auto(uart, "No valid arguments. Nothing has been changed.\r\n");
    }
}

void run_octave(XUartLite* uart, const char* arguments)
{
    long value;
    char* end;
    if (arguments != nullptr)
    {
        while (arguments[0] == ' ') { arguments++; }
        if (arguments[0] == '\0')
        {
            uart_transmit_auto(uart, "Missing argument.\r\n");
            return;
        }

        pop_word(arguments, end);
        if (arguments[0] == '+')
        {
            value = strtol(&arguments[1], &end, 10);
        }
        else if (arguments[0] == '-')
        {
            value = -strtol(&arguments[1], &end, 10);
        }
        else
        {
            value = strtol(arguments, &end, 10);
        }

        if (*end)
        {
            uart_transmit_auto(uart, "Invalid argument.\r\n");
            return;
        }
        
        if (value > 11 || value < -11)
        {
            uart_transmit_auto(uart, "Value must be within the range -11 to 11.\r\n");
            return;
        }

        set_octave_shift(value);
        print_shift_state(uart);
    }
    else
    {
        uart_transmit_auto(uart, "Missing argument.\r\n");
    }
}

void run_semitone(XUartLite* uart, const char* arguments)
{
    long value;
    char* end;
    if (arguments != nullptr)
    {
        while (arguments[0] == ' ') { arguments++; }
        if (arguments[0] == '\0')
        {
            uart_transmit_auto(uart, "Missing argument.\r\n");
            return;
        }

        pop_word(arguments, end);
        if (arguments[0] == '+')
        {
            value = strtol(&arguments[1], &end, 10);
        }
        else if (arguments[0] == '-')
        {
            value = -strtol(&arguments[1], &end, 10);
        }
        else
        {
            value = strtol(arguments, &end, 10);
        }

        if (*end)
        {
            uart_transmit_auto(uart, "Invalid argument.\r\n");
            return;
        }
        
        if (value > 11 || value < -11)
        {
            uart_transmit_auto(uart, "Value must be within the range -11 to 11.\r\n");
            return;
        }

        set_semitone_shift(value);
        print_shift_state(uart);
    }
    else
    {
        uart_transmit_auto(uart, "Missing argument.\r\n");
    }
}