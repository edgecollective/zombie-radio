import network
from settings.wifi import ssid, password
 
station = network.WLAN(network.STA_IF)
station.active(True)
station.connect(ssid, password)

import os
os.mkdir('/lib')

import upip
upip.install('picoweb')
