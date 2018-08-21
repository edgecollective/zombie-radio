import board
import busio
import digitalio

import adafruit_rfm9x


# Define radio parameters.
RADIO_FREQ_MHZ   = 915.0

CS    = digitalio.DigitalInOut(board.GPIO2)
RESET = digitalio.DigitalInOut(board.GPIO0)

spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)

# Initialze RFM radio
rfm9x = adafruit_rfm9x.RFM9x(spi, CS, RESET, RADIO_FREQ_MHZ)

# Note that the radio is configured in LoRa mode so you can't control sync
# word, encryption, frequency deviation, or other settings!

# You can however adjust the transmit power (in dB).  The default is 13 dB but
# high power radios like the RFM95 can go up to 23 dB:
rfm9x.tx_power = 23

def receive(timeout):
    msg=''
    packet = rfm9x.receive(timeout=timeout)
    if packet is None:
        print('nuthin')
    else:
        msg=str(packet,'ascii')+'\n'
        print(msg)
    return msg
