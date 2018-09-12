from machine import Pin

led = Pin(13,Pin.OUT)

use_oled_display = True

class radio:
    spi_id = 2
    baudrate = 5000000
    sck  = Pin(5)
    mosi = Pin(18)
    miso = Pin(19)
    cs   = Pin(12, Pin.OUT)
    resetNum = 15
    freq = 915.0

class wifi:
    ssid     = "dolphnet"
    password = "mcmlxix1969"
