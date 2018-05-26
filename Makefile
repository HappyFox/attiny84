# Arduino Make file. Refer to https://github.com/sudar/Arduino-Makefile

# Set this if the IDE is not in your $PATH or you want to use a specific version:
ARDUINO_DIR = $(HOME)/arduino-1.8.5
ARDUINO_LIBS = TinyWireS

# Programmer type:
ISP_PROG = linuxspi
ISP_PORT = /dev/spidev0.0 

AVRDUDE      = /usr/bin/avrdude
AVRDUDE_CONF = /etc/avrdude.conf
#
#AVRDUDE_ARD_PROGRAMMER=linuxspi
AVRDUDE_ARD_BAUDRATE=10000

# Examples - obviously pick only one and comment/delete the rest:

# ------------------------------------------------------------------ #

# https://github.com/SpenceKonde/ATTinyCore (1.5+)
#ALTERNATE_CORE = ATTinyCore
#BOARD_TAG = attinyx5
#BOARD_SUB = 85
#VARIANT = tinyX5
#F_CPU = 8000000L
ALTERNATE_CORE = ATTinyCore
BOARD_TAG = attinyx4
BOARD_SUB = 84
VARIANT = tinyX4
F_CPU = 10000000L

# Path to the Arduino Makefile
include $(HOME)/Arduino-Makefile/Arduino.mk

# !!! Important. You have to use 'make ispload' when using an ISP.
