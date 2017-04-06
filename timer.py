#!/usr/bin/env python
#title           :timer.py
#description     :This will start a timer.
#author          :Bryan Galindo
#date            :04022017
#version         :0.1
#usage           :python timer.py
#notes           :
#python_version  :2.7.13
#==============================================================================

import time, ctypes

totalTime = int(raw_input("How many minutes do you need? > "))
run = raw_input("Type 'start' to begin: ")

if run == 'start':
    while totalTime != 0:
        print "Time remaining: ", totalTime, " minute(s)."
        time.sleep(60)
        totalTime -= 1

    # Bring up the dialog box here
    import os

    def notify(title, text):
        os.system("""
              osascript -e 'display notification "{}" with title "{}"'
              """.format(text, title))

    notify("Time is up!", "You may now take a 10 minute break.")
