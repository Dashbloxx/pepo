CC = gcc
CFLAGS = -Wall -O2 -g
LDFLAGS = -lm
SOURCES = $(wildcard source/*.c)
OBJECTS = $(SOURCES:.c=.o)
TARGET = pepo

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ $(LDFLAGS)

clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean
