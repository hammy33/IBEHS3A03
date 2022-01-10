load('EEGdata_assignment4.mat');

%Input Time-Domain Waveform Plot
n = 0:(length(EEGa4)-1);
t = n/Fs;
figure
plot(t,EEGa4)
title('EEG Input Time-Domain Signal');

%Magnitude and Phase spectra of the Input Waveform
[M,ph,f] = fourier_dt(EEGa4,Fs,'half');
figure('Name', 'Magnitude and Phase Spectra of EEG Input', 'NumberTitle', 'off');
subplot(2,1,1);
plot(f, M)
ylabel('|X(f)| (mV)');
title('Magnitude Spectra of EEG Input');
subplot(2,1,2);
plot(f,ph)
ylabel('\angleX(f)')
title('Phase Spectra of EEG Input');
xlabel('f (Hz)');

%Output Time-Domain with Filter against Input Time-Domain
y = filter(Hd_EEG_IIR,EEGa4);
figure
plot(t,y)
title('EEG Input and EEG IIR Filter Output Time-Domain Signal Comparison');
hold on
plot(t,EEGa4)
shg

%Magnitude and Phase spectra of Output Waveform
[My,phy,fy] = fourier_dt(y,Fs,'half');
figure('Name', 'Magnitude and Phase Spectra of EEG Input and IIR Filter Output Comparison', 'NumberTitle', 'off');
subplot(2,1,1);
plot(f, M)
ylabel('|X(f)| (mV)');
xlim([50 70])
title('Magnitude Spectra of EEG Input and IIR Filter Output Comparison');
hold on
plot(fy,My)
shg
subplot(2,1,2);
plot(f,ph)
ylabel('\angleX(f)')
xlim([45 75])
title('Phase Spectra of EEG Input and IIR Filter Output Comparison');
xlabel('f (Hz)');
hold on
plot(fy,phy)
shg
