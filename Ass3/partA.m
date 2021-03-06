load('BFVdata_assignment3.mat');

t = 0:1/Fs:(length(BFVdu)-1)/Fs;
[xpks, xlocs] = findpeaks(BFVdu, 'MinPeakHeight', 30);

% plot input signal

figure('Name', 'BFVdu Signal', 'NumberTitle', 'off');
plot(t, BFVdu)
hold on;
plot(t(xlocs), xpks, 'r+')
xlabel('t (s)');
ylabel('Amplitude (mV)');
title('BFVdu Signal');

L = 452; % appx. length of period

BFVdu_p = BFVdu(1:L);
BFVdu_p_zp = [BFVdu_p' zeros(1,L)]';

[mBFV, phBFV, fBFV] = fourier_dt(BFVdu, Fs, 'half');
[mBFV_p, phBFV_p, fBFV_p] = fourier_dt(BFVdu_p, Fs, 'half');
[mBFV_p_zp, phBFV_p_zp, fBFV_p_zp] = fourier_dt(BFVdu_p_zp, Fs, 'half');

% plot magnitude spectra

figure('Name', 'Magnitude Spectrum', 'NumberTitle', 'off');

subplot(3,1,1);
plot(fBFV, mBFV)
xlim([0 20]);
ylabel('|X(f)| (mV)');
title('Entire BFVdu Signal');

subplot(3,1,2);
plot(fBFV_p, mBFV_p)
xlim([0 20]);
ylabel('|X(f)| (mV)');
title('Portion of BFVdu Signal');

subplot(3,1,3);
plot(fBFV_p_zp, mBFV_p_zp)
xlim([0 20]);
ylabel('|X(f)| (mV)');
xlabel('f (Hz)');
title('Portion of BFVdu Signal with Zero-padding');

% compare magnitude spectra (between zero-pad and non zero-pad)

figure('Name', 'Magnitude Spectra Comparison', 'NumberTitle', 'off');

subplot(2,1,1);
plot(fBFV, mBFV)
hold on;
plot(fBFV_p, mBFV_p, '+-')
xlim([0 20]);
ylabel('|X(f)| (mV)');
title('BFVdu');
legend('Full Signal', 'Portioned Signal');

subplot(2,1,2);
plot(fBFV, mBFV)
hold on;
plot(fBFV_p_zp, mBFV_p_zp, '-')
xlim([0 20]);
ylabel('|X(f)| (mV)');
xlabel('f (Hz)');
title('BFVdu');
legend('Full Signal', 'Zero-padded Portioned Signal');

L2 = 390; % off sync with period

BFVdu_p2 = BFVdu(1:L2);
[mBFV_p2, phBFV_p2, fBFV_p2] = fourier_dt(BFVdu_p2, Fs, 'half');

% compare magnitude spectra (between different L's)

figure('Name', 'Magnitude Spectra Comparison', 'NumberTitle', 'off');

subplot(2,1,1);
plot(fBFV, mBFV)
hold on;
plot(fBFV_p, mBFV_p, '+-')
xlim([0 10]);
ylabel('|X(f)| (mV)');
title('BFVdu');
legend('Full Signal', 'Portioned Signal with L=339');

subplot(2,1,2);
plot(fBFV, mBFV)
hold on;
plot(fBFV_p2, mBFV_p2, '+-')
xlim([0 10]);
ylabel('|X(f)| (mV)');
xlabel('f (Hz)');
title('BFVdu');
legend('Full Signal', 'Portioned Signal with L=390');