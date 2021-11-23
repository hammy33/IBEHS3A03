load('BFVdata_assignment3.mat');

L = 300;

[mBFV1, phBFV1, fBFV1] = fourier_dt(BFVdu, Fs, 'full');
[mBFV2, phBFV2, fBFV2] = fourier_dt(BFVdu(1:L), Fs, 'full');
[mBFV3, phBFV3, fBFV3] = fourier_dt([BFVdu(1:L)' zeros(1,L)]', Fs, 'full');

figure('Name', 'Magnitude Spectrum of Entire BFVdu Signal', 'NumberTitle', 'off');
plot(fBFV1, mBFV1)
xlim([-30 30]);
figure('Name', 'Magnitude Spectrum of Portion of BFVdu Signal', 'NumberTitle', 'off');
plot(fBFV2, mBFV2)
xlim([-30 30]);
figure('Name', 'Magnitude Spectrum of Portion with Zero-pad', 'NumberTitle', 'off');
plot(fBFV3, mBFV3)
xlim([-30 30]);