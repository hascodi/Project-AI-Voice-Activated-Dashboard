import deeplake
import librosa.display
import numpy as np
from matplotlib import pyplot as plt
from scipy.io import wavfile

sample_rate = 16000

ds = deeplake.load("hub://activeloop/timit-train")

AUDIO_FILE = ds.audios[5].numpy()

scaled = np.int16(AUDIO_FILE/np.max(np.abs(AUDIO_FILE)) * 32767)
wavfile.write('sound.wav', sample_rate, scaled)
filename = 'sound.wav'

wav = scaled.astype(np.float32) / 32768.0
wav = wav.reshape(-1)
print(wav)
plt.figure(figsize=(14, 5))
librosa.display.waveshow(wav, sr=sample_rate)
librosa.display.specshow(librosa.amplitude_to_db(np.abs(librosa.stft(wav)), ref=np.max), y_axis='log', x_axis='time')
plt.colorbar(format='%+2.0f dB')
plt.title('Power spectrogram')
plt.tight_layout()
plt.show()