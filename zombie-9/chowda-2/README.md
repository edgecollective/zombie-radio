# put relevant files on esp32:
ampy -p /dev/ttyUSB0 put e.html
ampy -p /dev/ttyUSB0 put zom9.html
ampy -p /dev/ttyUSB0 put static

# connect to esp32
screen /dev/ttyUSB0 115200

# run web server on esp32:
>>> import zom9

