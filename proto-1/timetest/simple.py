import machine
pins = [machine.Pin(i, machine.Pin.IN) for i in (0, 2, 4, 5, 12, 13, 14, 15)]

html = """<!DOCTYPE html>
<html>
    <head> <title>ESP8266 Pins</title> </head>
    <body> <h1>ESP8266 Pins</h1>
        <table border="1"> <tr><th>Pin</th><th>Value</th></tr> %s </table>
    </body>
</html>
"""

import socket
addr = socket.getaddrinfo('0.0.0.0', 80)[0][-1]

s = socket.socket()
s.bind(addr)
s.listen(1)

print('listening on', addr)


counter=1

while True:
    f=open('message.txt','w')
    f.write(str(counter))
    f.close()
    counter=counter+1
    cl, addr = s.accept()
    print('client connected from', addr)
    cl_file = cl.makefile('rwb', 0)
    while True:
        line = cl_file.readline()
        if not line or line == b'\r\n':
            break
    f=open('message.txt')
    m=f.read()
    f.close()
    ms=m.split('\n')
    rows = ['<tr><td>%s</td><td>%s</td></tr>' % (p, p) for p in ms]
    response = html % '\n'.join(rows)
    #response = html % ms[0]
    cl.send(response)
    cl.close()
