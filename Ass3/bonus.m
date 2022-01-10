load('BFVdata_assignment3.mat');
FsBFV = Fs;
load('EEGdata_assignment3.mat');
FsEEG = Fs;

winlenBFV = 57;
winlenEEG = 1717;

overlapBFV = 5;
overlapEEG = 28;

nfftBFV = 1028;
nfftEEG = 5e3;

figure('Name', 'Spectrogram', 'NumberTitle', 'off');

subplot(3,1,1);
[s_BFV, f_BFV, t_BFV] = spectrogram(BFVdu, winlenBFV, overlapBFV, nfftBFV, FsBFV);
imagesc(t_BFV, f_BFV, abs(s_BFV)/winlenBFV);
axis xy;
ylim([0 10]);
ylabel('f (Hz)');
xlabel('t (s)');
title('BFVdu');
cb1 = colorbar;
cb1.Label.String = '|X(f)| (mV)';

subplot(3,1,2);
[s_EEG1, f_EEG1, t_EEG1] = spectrogram(EEG1, winlenEEG, overlapEEG, nfftEEG, FsEEG);
imagesc(t_EEG1, f_EEG1, abs(s_EEG1)/winlenEEG)
axis xy;
ylim([0 10]);
ylabel('f (Hz)');
xlabel('t (s)');
title('EEG1');
cb2 = colorbar;
cb2.Label.String = '|X(f)| (mV)';

subplot(3,1,3);
[s_EEG2, f_EEG2, t_EEG2] = spectrogram(EEG2, winlenEEG, overlapEEG, nfftEEG, FsEEG);
imagesc(t_EEG2, f_EEG2, abs(s_EEG2)/winlenEEG)
axis xy;
ylim([0 10]);
ylabel('f (Hz)');
xlabel('t (s)');
title('EEG2');
cb3 = colorbar;
cb3.Label.String = '|X(f)| (mV)';