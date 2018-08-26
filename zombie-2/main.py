#
# This is a picoweb example showing a Server Side Events (SSE) aka
# EventSource handling. All connecting clients get the same events.
# This is achieved by running a "background service" (a coroutine)
# and "pushing" the same event to each connected client.
#

TIMEOUT = 5
DISPLAY = True

import uasyncio
import picoweb
import network
import time
import gc

from machine import Pin
from machine import SPI

from upy_rfm9x import RFM9x


if DISPLAY:
    import ssd1306
    from machine import I2C
    i2c = I2C(-1, Pin(22), Pin(23))
    oled = ssd1306.SSD1306_I2C(128, 32, i2c)
    oled.fill(0)
    oled.show()


sck=Pin(5)
mosi=Pin(18)
miso=Pin(19)
cs = Pin(12, Pin.OUT)
#reset=Pin(13)
resetNum=15

led = Pin(13,Pin.OUT)

spi=SPI(2,baudrate=5000000,sck=sck,mosi=mosi,miso=miso)



rfm9x = RFM9x(spi, cs, resetNum, 915.0)

ssid = "jpl"
password =  "mars-adventure"
 
station = network.WLAN(network.STA_IF)
station.active(True)
station.connect(ssid, password)

while station.isconnected() == False:
    pass

ip = station.ifconfig()

event_sinks = set()

#
# Webapp part
#

def blink(duration):
    led.value(1)
    time.sleep(duration)
    led.value(0)
    time.sleep(duration)

def index(req, resp):
    yield from picoweb.start_response(resp)
    yield from resp.awrite("""\
<!DOCTYPE html>
<html>
<head>
<script>
var source = new EventSource("events");
source.onmessage = function(event) {
    document.getElementById("result").innerHTML = event.data + "<br>";
}
source.onerror = function(error) {
    console.log(error);
    document.getElementById("result").innerHTML = "EventSource error:" + error + "<br>";
}
</script>
</head>
<body>
<div id="result"></div>
</body>
</html>
""")


def events(req, resp):
    global event_sinks
    print("Event source %r connected" % resp)
    yield from resp.awrite("HTTP/1.0 200 OK\r\n")
    yield from resp.awrite("Content-Type: text/event-stream\r\n")
    yield from resp.awrite("\r\n")
    event_sinks.add(resp)
    return False


ROUTES = [
    ("/", index),
    ("/events", events),
]

#
# Background service part
#

def push_event(ev):
    global event_sinks
    to_del = set()

    for resp in event_sinks:
        try:
            await resp.awrite("data: %s\n\n" % ev)
        except OSError as e:
            print("Event source %r disconnected (%r)" % (resp, e))
            await resp.aclose()
            # Can't remove item from set while iterating, have to have
            # second pass for that (not very efficient).
            to_del.add(resp)

    for resp in to_del:
        event_sinks.remove(resp)


def push_count():
    i = 0
    free_mem_orig=0.
    while True:
        if i==0:
            free_mem_orig=gc.mem_free()
            mem_diff=0
        else:
            mem_diff=gc.mem_free()-free_mem_orig
        print("iter: %s; mem_diff = %s" % (i,mem_diff))
        rfm9x.receive(timeout=TIMEOUT)
        if rfm9x.packet is not None:
            packet_text = str(rfm9x.packet, 'ascii')
            rssi=str(rfm9x.rssi)
            print('Received: {0}'.format(packet_text))
            print("RSSI:",rssi)
            if DISPLAY:
                display_text="[%s]:%s,%s" % (i, packet_text,rssi)
                update_display(display_text)
            
            await push_event("[%s]: %s </br> RSSI: %s" % (i, packet_text,rssi))
        else:
            if DISPLAY:
                display_text="[%s]: (timed out)" % i
                update_display(display_text)
            print("No packet ... ")
            await push_event("[%s]:(timed out)" % i)
        i += 1
        blink(.1)
        gc.collect()
        await uasyncio.sleep(1)


def update_display(display_text):
    oled.fill(0)
    oled.text(ip[0], 0, 0)
    oled.text(':8081',0,10)
    oled.text(display_text,0,20)
    oled.show()
#import logging
#logging.basicConfig(level=logging.INFO)
#logging.basicConfig(level=logging.DEBUG)

loop = uasyncio.get_event_loop()
loop.create_task(push_count())

#app = picoweb.WebApp(__name__, ROUTES)
app = picoweb.WebApp(None, ROUTES)
# debug values:
# -1 disable all logging
# 0 (False) normal logging: requests and errors
# 1 (True) debug logging
# 2 extra debug logging
print("host:"+ip[0])


for i in range(3):
    blink(.2)

# note: you'll need to visit ipaddress:8081
app.run(debug=-1,host=ip[0])
