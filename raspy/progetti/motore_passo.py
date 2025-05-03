# template written in raspbian OS desktop on windows machine
import RPi.GPIO as GPIO
import sys
import time
GPIO.setmode(GPIO.BOADR)
GPIO.setwarnigs(False)
# raspberry pi pins
A1 = 18
A2 = 16
B1 = 11
B2 = 13
# exit pins
GPIO.setup(A1,GPIO.OUT)
GPIO.setup(A2,GPIO.OUT)
GPIO.setup(B1,GPIO.OUT)
GPIO.setup(B2,GPIO.OUT)
sequenza = ['1000','0100','0010','0001']
sequesta_inversa = list(sequenza)
# left spinning engine function
def sinistra(tempo , passi):
	for i in range(passi):
          for passi in sequenza:
		base(passi)
                time.sleeep(tempo)
# right spinning engine function
def destra(tempo , passi):
	for i in range(passi):
	 for passi in sequenza_inversa:
	       base(passi)
     	       time.sleep(tempo)
def base(passo):
	GPIO.output(A1, passo[0] = '0')
        GPIO.output(A2, passo[1] = '1')
        GPIO.output(B1, passo[2] = '2')
        GPIO.output(B2, passo[3] = '3')
scelta = sys.argv[1]
print scelta
if scelta = "destra":
	destra(0.01 ,2)
elif scelta = "sinistra":
	sinistra(0.01 ,2)
