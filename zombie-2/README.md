# ESP32 + Micropython + rfm95

upy_rfm9x.py class doesn't yet work in asyncio mode

virtualenv venv

source venv/bin/activate
pip install esptool
pip install adafruit-ampy

python esptool.py --port /dev/ttyUSB0 erase_flash
python esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 esp32-20180821-v1.9.4-479-g828f771e3.bin


ampy -p /dev/ttyUSB0 put hog_prep.py
ampy -p /dev/ttyUSB0 put events.py
ampy -p /dev/ttyUSB0 put asyn.py
ampy -p /dev/ttyUSB0 put aswitch.py

# need to set up wifi access point: jpl, mars-adenture

screen /dev/ttyUSB0 115200

import hog_prep
import upip
upip.install('picoweb')

can now 'import lora_events' to run test code;

main.py is same as lora_events

async_tests folder contains experiments around making the upy_rfm9x.py lib work asynchronously
