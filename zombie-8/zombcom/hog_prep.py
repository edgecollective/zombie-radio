import network
from secret_settings import ssid, password
 
station = network.WLAN(network.STA_IF)
station.active(True)
station.connect(ssid, password)

import os
os.mkdir('/lib')
