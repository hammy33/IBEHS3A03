load('BFVdata_assignment3.mat');
FsBFV = Fs;
load('EEGdata_assignment3.mat');
FsEEG = Fs;

winlenBFV = 57;
winlenEEG = 1717;

overlapBFV = 5;
overlapEEG = 28;

nfftBFV = 1028;
nfftEEG = 

figure('Name', 'Spectrogram of BFVdu', 'NumberTitle', 'off');
spectrogram(BFVdu, 'yaxis')
figure('Name', 'Spectrogram of EEG1', 'NumberTitle', 'off');
spectrogram(EEG1)
figure('Name', 'Spectrogram of EEG2', 'NumberTitle', 'off');
spectrogram(EEG2)
