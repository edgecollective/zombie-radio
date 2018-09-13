
import uasyncio
import picoweb
import network
import time
import gc

from machine import Pin
from machine import SPI

if DISPLAY:
    import ssd1306
    from machine import I2C
    i2c = I2C(-1, Pin(14), Pin(13))
    oled = ssd1306.SSD1306_I2C(128, 32, i2c)
    oled.fill(0)
    oled.show()

if DISPLAY:
    oled.fill(0)
    oled.text("Starting up ...",0,0)
    oled.show()
    

ssid = "zombie"
password =  "disaster"
 
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
f=open('test.html')
html=f.read()
f.close()


def blink(duration):
    led.value(1)
    time.sleep(duration)
    led.value(0)
    time.sleep(duration)

def index(req, resp):
    yield from picoweb.start_response(resp)
    yield from resp.awrite(html)

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
    while True:
        try:
            #measure
            temp=23.3
            if DISPLAY:
                    display_text="%s" % str(temp)
                    update_display(display_text)
            await push_event("- %s" % str(temp))
            i += 1
        except:
            print("some error?")
        blink(.1)
        gc.collect()
        await uasyncio.sleep(1)



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
if DISPLAY:
    oled.fill(0)
    oled.text("IP ADDRESS:",0,0)
    oled.text(ip[0], 0, 10)
    oled.text(':8081',0,20)
    #oled.text(display_text,0,20)
    oled.show()
    
for i in range(3):
    blink(.2)

# note: you'll need to visit ipaddress:8081
app.run(debug=-1,host=ip[0])
