#cppcheck  --force --std=c99 --language=c src/
make clean
rm -rf bin obj
make all
#fuser -k /dev/ttyUSB0
#avrdude -c arduino -P /dev/ttyUSB0 -p m328p -D -U flash:w:bin/firmware.elf
avrdude -c arduino -P /dev/ttyS8 -p m328p -D -U flash:w:bin/firmware.elf
#figlet "MIC19"
