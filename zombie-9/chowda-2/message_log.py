class MessageLog:
    def __init__(self,
                 maxsize = 20,
                 max_line_length = 64,
                 filename="mesglog.csv"
                ):
        self._maxsize = maxsize
        self._endl = '\n'
        self._linelen = max_line_length + 1
        self._maxbytes = maxsize*self._linelen
        self._file = open(filename,'w+')
        self._endpos = self._file.tell() #append mode always starts at end
        self._size = 0
    
    def add(self, text):
        line = text.ljust(self._linelen - 1)
        self._size += 1
        if self._size > self._maxsize:
            self._size = self._maxsize
        if self._endpos >= self._maxbytes:
            #wrap to begining, overwriting existing lines
            print("wrapping...")
            self._endpos = 0
        self._file.seek(self._endpos)
        self._file.write(line)
        self._file.write(self._endl)
        self._endpos += self._linelen
        #self._endpos = self._file.tell()
        
    def readout_gen(self):
        #start at the end
        pos = 0
        if self._size == self._maxsize:
            #the queue has wrapped so go to the end
            pos = self._endpos
            print("starting at pos:",pos)
        while True:
            self._file.seek(pos)
            yield self._file.readline()
            pos += self._linelen
            if pos == self._endpos:
                break
            elif pos >= self._maxbytes:
                #wrap to begining, overwriting existing lines
                pos = 0
                
    def close(self):
        self._file.close()

################################################################################
# TEST CODE
################################################################################
if __name__ == "__main__":
    import os
    fn = "test.csv"
    if os.path.isfile(fn):
        os.remove(fn)
    ml = MessageLog(maxsize=5, filename="test.csv")
    ml.add('line1')
    ml.add('line2')
    ml.add('line3')
    ml.add('line4')
    for line in ml.readout_gen():
        print(line.strip())
    print(ml._endpos)
    ml.add('line5')
    for line in ml.readout_gen():
        print(line.strip())
    print(ml._endpos)
    ml.add('line6')
    print(ml._endpos)
    for line in ml.readout_gen():
        print(line.strip())
    ml.add('line7')
    print(ml._endpos)
    for line in ml.readout_gen():
        print(line.strip())
    
