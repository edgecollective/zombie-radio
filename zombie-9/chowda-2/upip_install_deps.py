import os, network, time
from config import wifi #local settings


station = network.WLAN(network.STA_IF)
station.active(True)
station.connect(wifi.ssid, wifi.password)

while station.isconnected() == False:
    print("Waiting for WiFi connection...")
    time.sleep(2.0)

if not 'lib' in os.listdir('/'):
    os.mkdir('/lib')

import upip
upip.install('picoweb')
