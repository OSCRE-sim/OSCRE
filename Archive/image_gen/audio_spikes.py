import numpy as np
import librosa
import librosa.display
import matplotlib.pyplot as plt

# Load audio file
filename = "ufo.wav"  # Replace with your audio file
y, sr = librosa.load(filename, sr=16000)  # Load audio with a fixed sample rate

# Compute Mel spectrogram
#n_mels = 40  # Number of frequency bands (like cochlear neurons)
n_mels = 9  # Number of frequency bands (like cochlear neurons)
n_fft = 512  # FFT window size
hop_length = 256  # Time step for spectrogram
mel_spectrogram = librosa.feature.melspectrogram(y=y, sr=sr, n_fft=n_fft, hop_length=hop_length, n_mels=n_mels)

# Convert to dB scale for better normalization
mel_spectrogram_db = librosa.power_to_db(mel_spectrogram, ref=np.max)

# Normalize between 0 and 1 (convert from dB scale)
mel_spectrogram_norm = (mel_spectrogram_db - mel_spectrogram_db.min()) / (mel_spectrogram_db.max() - mel_spectrogram_db.min())

# Set spike generation threshold (higher values = sparser spikes)
spike_prob = mel_spectrogram_norm  # Use spectrogram values as spike probabilities

# Generate Poisson spike trains
time_bins = spike_prob.shape[1]  # Number of time steps
spike_train = np.random.rand(n_mels, time_bins) < spike_prob  # Probabilistic spike generation

# Plot the spike train
plt.figure(figsize=(10, 6))
plt.imshow(spike_train, aspect='auto', cmap='binary', origin='lower')
plt.xlabel("Time Bins")
plt.ylabel("Mel Frequency Channels")
plt.title("Generated Spike Train")
plt.savefig("test.png")
plt.show()