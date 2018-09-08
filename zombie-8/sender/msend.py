>>> import board
>>> import busio
>>> import digitalio
>>> spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
>>> cs = digitalio.DigitalInOut(board.RFM9X_CS)
>>> reset = digitalio.DigitalInOut(board.RFM9X_RST)

