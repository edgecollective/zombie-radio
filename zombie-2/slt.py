from machine import Pin
from machine import SPI

from upy_rfm9x import RFM9x

import sdcard, os

import time

cs2 = Pin(15, Pin.OUT)
sck2=Pin(16)
mosi2=Pin(4)
miso2=Pin(17)

spi1=SPI(2,baudrate=5000000,sck=sck2,mosi=mosi2,miso=miso2)

sd = sdcard.SDCard(spi1, cs2)
os.mount(sd,'/sd')
output=os.listdir('/sd')
print(output)

spi1.deinit()

#sck=Pin(5)
#mosi=Pin(18)
#miso=Pin(19)
#cs = Pin(12, Pin.OUT)
#resetNum=15

sck=Pin(25)
mosi=Pin(33)
miso=Pin(32)
cs = Pin(26, Pin.OUT)
resetNum=27

led = Pin(13,Pin.OUT)

def blink(duration):
    led.value(1)
    time.sleep(duration)
    led.value(0)
    time.sleep(duration)

spi=SPI(1,baudrate=5000000,sck=sck,mosi=mosi,miso=miso)



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
            print('garbled packet',rfm9x.packet)
spi.deinit()
