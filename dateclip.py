import pyperclip
import datetime
import time

time_now = datetime.datetime.now().strftime("%y-%m-%d %H:%M:%S")
pyperclip.copy(time_now)
