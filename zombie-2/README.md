# ESP32 + Micropython + rfm95

Using Feather Huzzah 32 and Feather RFM9x Wing


## Wiring

Huzzah32 -- RFM9x Wing

3V -- 3V
GND -- GND

MISO (GPIO19) -- MISO
MOSI (GPIO18) -- MOSI
SCK (GPIO5) -- SCK

GPIO 15 -- RST (D)
GPIO 12 -- CS (E)

# Setup

## on ubuntu:
```
virtualenv venv

source venv/bin/activate
pip install esptool
pip install adafruit-ampy

python esptool.py --port /dev/ttyUSB0 erase_flash
python esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 esp32-20180821-v1.9.4-479-g828f771e3.bin


ampy -p /dev/ttyUSB0 put hog_prep.py
ampy -p /dev/ttyUSB0 put lora_events.py
ampy -p /dev/ttyUSB0 put asyn.py
ampy -p /dev/ttyUSB0 put aswitch.py
```
NOTE: assumes wifi access point: jpl, mars-adenture


## in micropython:

[`screen /dev/ttyUSB0 115200 to access micropython REPL`]
```python
import hog_prep
import upip
upip.install('picoweb')
```
## usage

can now `import lora_events` to run test code

or can run continuously by putting `main.py` on board

ipaddress will print on terminal;

navigate to ipaddress:8081 in browser


## notes

`upy_rfm9x.py` class doesn't yet work in asyncio mode

main.py is same as lora_events.py

async_tests folder contains experiments around making the upy_rfm9x.py lib work asynchronously
