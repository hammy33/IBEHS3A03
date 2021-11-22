load ('EEGdata_assignment3.mat');

% create time arrays for the two ECG signals
t1 = 0:1/Fs:(length(EEG1)-1)/Fs;
t2 = 0:1/Fs:(length(EEG1)-1)/Fs;

%compute the magnitude spectra of the two signals
[MEEG1,phEEG1,fEEG1] = fourier_dt(EEG1,Fs,'half');
[MEEG2,phEEG2,fEEG2] = fourier_dt(EEG2,Fs,'half');

%plot the magnitude spectra of EEG1 and EEG2
figure
subplot(2,1,1)
plot(fEEG1,MEEG1)
xlim([0 30])
%xticks([0:10 15:5:30])
ylabel('|X(f)| (mV)')
title('EEG1')
subplot(2,1,2)
plot(fEEG2,MEEG2)
xlim([0 30])
%xticks([0:10 15:5:30])
ylabel('|X(f)| (mV)')
title('EEG2')
xlabel('f (Hz)')
