load('EEGdata_assignment4.mat');

%Input Time-Domain Waveform Plot
n = 0:(length(EEGa4)-1);
t = n/Fs;
figure
plot(t,EEGa4)

%Magnitude and Phase spectra of the Input Waveform
[M,ph,f] = fourier_dt(EEGa4,Fs,'half');
figure
plot(f,M)

%Output Time-Domain with Filter against Input Time-Domain
y = filter(Hd_EEG_IIR,EEGa4);
figure
plot(t,y)
hold on
plot(t,EEGa4)
shg

%Magnitude and Phase spectra of Output Waveform
[My,phy,fy] = fourier_dt(y,Fs,'half');
figure
plot(fy,My)
hold on
plot(f,M)
shg