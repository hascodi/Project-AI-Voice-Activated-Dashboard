from fileinput import filename
import deeplake
import flask
import numpy
import torch
import librosa.display
from matplotlib import pyplot as plt
import librosa.display
from scipy.io import wavfile

ds = deeplake.load("hub://activeloop/timit-train")

AUDIO_FILE = ds.audios[0]

import sounddevice as sd
import soundfile as sf

sf.write('sound.wav', AUDIO_FILE, 11000)
filename = 'sound.wav'
# Extract data and sampling rate from file
data, fs = sf.read(filename, dtype='float32')  
sd.play(data, fs)
status = sd.wait()  # Wait until file is done playing

plt.plot(AUDIO_FILE)
plt.show()

