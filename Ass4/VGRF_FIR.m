load('VGRFdata_assignment4.mat');
% load('VGRF_FIR.mat');

%Input Time-Domain Waveform Plot
n = 0:(length(VGRF)-1);
t = n/Fs;
[xpks, xlocs] = findpeaks(VGRF, 'MinPeakHeight', 1290);
figure
plot(t,VGRF)
ylabel('F (N)');
xlabel('t (s)');
hold on;
plot(t(xlocs), xpks, 'r+')
title('VGRF Input Time-Domain Signal');

%Magnitude and Phase spectra of the Input Waveform
[M,ph,f] = fourier_dt(VGRF,Fs,'half');
figure('Name', 'Magnitude and Phase Spectra of VGRF Input', 'NumberTitle', 'off');
subplot(2,1,1);
plot(f, M)
xlim([0 30]);
ylim([0 30]);
ylabel('|X(f)| (mV)');
title('Magnitude Spectra of VGRF Input');
subplot(2,1,2);
plot(f,ph)
ylabel('\angleX(f)')
xlim([0 30]);
title('Phase Spectra of VGRF Input');
xlabel('f (Hz)');

%Output Time-Domain with Filter against Input Time-Domain
y = filter(Hd_VGRF_FIR,VGRF);
figure
plot(t,VGRF)
ylabel('F (N)');
xlabel('t (s)');
title('VGRF Input and VGRF FIR Filter Output Time-Domain Signal Comparison');
hold on
plot(t,y)
shg

%Output Time-domain with Filter shifted by DC component against Input Time-Domain
figure
plot(t,VGRF)
ylabel('F (N)');
xlabel('t (s)');
title('VGRF Input and Shifted VGRF FIR Filter Output Time-Domain Signal Comparison');
hold on
plot(t,y+1000)
shg

%Magnitude and Phase spectra of Output Waveform
[My,phy,fy] = fourier_dt(y,Fs,'half');
figure('Name', 'Magnitude and Phase Spectra of VGRF Input and FIR Filter Output Comparison', 'NumberTitle', 'off');
subplot(2,1,1);
plot(f, M)
ylabel('|X(f)| (mV)');
xlim([0 30]);
ylim([0 30]);
title('Magnitude Spectra of VGRF Input and FIR Filter Output Comparison');
hold on
plot(fy,My)
shg
subplot(2,1,2);
plot(f,ph)
ylabel('\angleX(f)');
xlim([0 30]);
title('Phase Spectra of VGRF Input and FIR Filter Output Comparison');
xlabel('f (Hz)');
hold on
plot(fy,phy)
shg

