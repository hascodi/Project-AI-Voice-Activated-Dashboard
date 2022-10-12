import deeplake
import flask
import numpy
import torch
import librosa.display
from matplotlib import pyplot as plt
import librosa.display
from scipy.io import wavfile

ds = deeplake.load("hub://activeloop/timit-train")

AUDIO_FILE = ds.audios[0].numpy()

#samples, sample_rate = librosa.load(AUDIO_FILE, sr = 16000)

plt.plot(AUDIO_FILE)
plt.show()

