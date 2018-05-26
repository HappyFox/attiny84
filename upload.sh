sudo avrdude -c linuxspi -p t85 -P /dev/spidev0.0 -b 10000 -U flash:w:build-attinyx5-85/ATtinyBlink.hex
