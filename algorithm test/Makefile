CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.cpp extern_const.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=test

.PHONY: clean run debug

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.cpp %.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)

run: $(EXECUTABLE)
	./$(EXECUTABLE)

debug: $(EXECUTABLE)
	gdb $(EXECUTABLE)