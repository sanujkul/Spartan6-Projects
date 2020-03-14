import serial

serialPortUbuntu = "/dev/ttyUSB2"
serialPort = serial.Serial(serialPortUbuntu, 9600, timeout=1)

while True:
    rw = input("Read data = 0, or transmit data = 1?  ")
    print(rw);
    if(rw == '0'):
        while(serialPort.inWaiting() <= 0):
            pass;
        c = -1;
        c = serialPort.read()
        print(c);
    elif(rw == '1'):
        dataTosend = input("What data to send:  ");
        print(dataTosend)
        print(dataTosend.encode('utf-8'))
        serialPort.write(dataTosend.encode('utf-8'));
    else:
        print("Select 0 or 1")

