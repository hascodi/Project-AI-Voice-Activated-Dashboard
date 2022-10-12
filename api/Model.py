import deeplake
import numpy as np
from matplotlib import pyplot as plt
from scipy.io import wavfile

ds = deeplake.load("hub://activeloop/timit-train")

AUDIO_FILE = ds.audios[5].numpy()

import sounddevice as sd
import soundfile as sf

scaled = np.int16(AUDIO_FILE/np.max(np.abs(AUDIO_FILE)) * 32767)
wavfile.write('sound.wav', 16000, scaled)
filename = 'sound.wav'

data, fs = sf.read(filename, dtype='float64')
sd.play(data, fs)
status = sd.wait()

plt.plot(AUDIO_FILE)
plt.show()