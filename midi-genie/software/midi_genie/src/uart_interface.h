#pragma once

#ifndef UART_INTERFACE_H
#define UART_INTERFACE_H

#include "config.h"
#include "xparameters.h"
#include "xintc.h"
#include "xuartlite.h"
#include "xil_printf.h"

#define UART_INT_ID	XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR

#define COMMAND_BUFFER 80
#define TERMINAL_SEPARATOR "--------------------------------------------------------------------------------\r\n"

int initialize_uart(XIntc *InterruptController);
int connect_uart_interrupt(XIntc *InterruptController);
void enable_uart_interrupt(XIntc *InterruptController);
void uart_handler(void *CallBackRef, unsigned int ByteCount);
void dummy_handler(void *CallBackRef, unsigned int ByteCount);

void uart_transmit_auto(XUartLite* uart, const char* data);
void uart_transmit(XUartLite* uart, const char* data, unsigned int length);

void pop_word(const char* string, char*& remainder);

void print_channel_state(XUartLite* uart);

void run_help(XUartLite* uart);
void run_status(XUartLite* uart);
void run_toggle(XUartLite* uart, const char* arguments);
void run_enable(XUartLite* uart, const char* arguments);
void run_disable(XUartLite* uart, const char* arguments);
void run_stop(XUartLite* uart, const char* arguments);

#endif
