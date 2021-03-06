from machine import Pin
from machine import SPI

from upy_rfm9x import RFM9x

import time

sck=Pin(25)
mosi=Pin(33)
miso=Pin(32)
cs = Pin(26, Pin.OUT)
#reset=Pin(13)
led = Pin(13,Pin.OUT)

resetNum=27

#sck=Pin(32)
#mosi=Pin(33)
#miso=Pin(25)
#cs = Pin(26, Pin.OUT)
#reset=Pin(13)
#led = Pin(13,Pin.OUT)

#resetNum=14


#sck=Pin(32)
#mosi=Pin(33)
#miso=Pin(25)
#cs = Pin(26, Pin.OUT)
#reset=Pin(13)
#led = Pin(13,Pin.OUT)

#resetNum=27

def blink(duration):
    led.value(1)
    time.sleep(duration)
    led.value(0)
    time.sleep(duration)

spi=SPI(2,baudrate=5000000,sck=sck,mosi=mosi,miso=miso)



rfm9x = RFM9x(spi, cs, resetNum, 915.0)

print('listening ...')
while True:
    rfm9x.receive(timeout=5.0)
    if rfm9x.packet is not None:
        try:
            packet_text = str(rfm9x.packet, 'ascii')
            print('Received: {0}'.format(packet_text))
            print("RSSI:",rfm9x.rssi)
            blink(.2)
        except:
            print("oops!")
spi.deinit()
