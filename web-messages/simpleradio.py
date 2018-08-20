import radioburst as rb


html = """<!DOCTYPE html>
<html>
    <head> <title>Disaster Comm</title> </head>
    <body> <h1>Messages</h1>
        <table border="1"> <tr><th>Sender</th><th>Message</th></tr> %s </table>
    </body>
</html>
"""

import socket
addr = socket.getaddrinfo('0.0.0.0', 80)[0][-1]

s = socket.socket()
s.bind(addr)
s.listen(1)

print('listening on', addr)

MAX_MESSAGES=10

counter=1
erase_flag=False

while True:
    msg=rb.receive(3)
    print(msg)
    if erase_flag:
        f=open('message.txt','w')
    else:
        f=open('message.txt','a')
    f.write(msg)
    f.close()
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
    if(len(ms)>=MAX_MESSAGES):
        erase_flag=True
    else:
        erase_flag=False
    rows = ['<tr><td>%s</td><td>%s</td></tr>' % (' ', p) for p in ms]
    response = html % '\n'.join(rows)
    #response = html % ms[0]
    cl.send(response)
    cl.close()
