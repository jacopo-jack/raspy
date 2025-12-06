import RPi.GPIO as GPIO
import sys
import time
GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)
#Pin Raspberry
A1 = 18
A2 = 16 
B1 = 11
B2 = 13
#Pin Out
GPIO.setup(A1,GPIO.OUT)
GPIO.setup(A2,GPIO.OUT)
GPIO.setup(B1,GPIO.OUT)
GPIO.setup(B2,GPIO.OUT)
sequenza = ['1000','0100','0010','0001']
sequenza_inversa = list(sequenza)
sequenza_reverse()
# engine rotation (to left)
def sinistra(tempo,passi):
    for i in range(passi):
        for passi in sequenza:
            base(passi)
            time.sleep(tempo)
# engine rotation (to right)
def destra(tempo,passi):
    for i in range(passi):
        for passi in sequenza_inversa:
            base(passi)
            time.sleep(tempo)
# pace
def base(passo):
   GPIO.output(A1,passo[0] == '0')
   GPIO.setup(A2, passo[1] == '0')
   GPIO.setup(B1, passo[2] == '0')
   GPIO.setup(B2, passo[3] == '0')
#choice
scelta = sys.argv[1]
print scelta
if scelta == 'destra':
    destra(0.01,2)
elif scelta == 'sinistra' :
    sinistra(0.00,2)
#end        