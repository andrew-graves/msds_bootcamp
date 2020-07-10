from datetime import datetime
from time import sleep

def stopwatch(time):
    start = datetime.now()
    try: 
        sleep(float(time))
        print('Time difference of ' + str(datetime.now() - start))
    except ValueError:
        print('Your input was not a valid number.')
        stopwatch_input()
    
def stopwatch_input():
    time_input = input("Test waiting time by typing a number in seconds: ")
    stopwatch(time_input)

stopwatch_input()