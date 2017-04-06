#!/usr/bin/env python
#title           :ytmusic.py
#description     :Allows user to download audio streams from YouTube
#author          :Bryan Galindo
#date            :04052017
#version         :0.1
#usage           :python ytmusic.py
#notes           :
#python_version  :2.7.13
#======================================================================
import pafy

print "Hello! Please enter your desired YouTube link below"
url = raw_input("")

# Creates a video instance from a YouTube url
video = pafy.new(url)
print "You've selected: " + video.title

# Displays audio-only streams options
audiostreams = video.audiostreams
print "The following formats available for audio streaming:"
for a in audiostreams:
    print audiostreams.index(a),
    print(a.bitrate, a.extension, a.get_filesize())

# Prompts user to select an audio stream for download
print "Which number audio stream would you like to download?"
userSelect = int(raw_input())
audiostreams[userSelect].download()
