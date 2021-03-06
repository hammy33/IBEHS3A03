load ('EEGdata_assignment3.mat');

%Question 1
%compute the magnitude spectra of the two signals
[MEEG1,phEEG1,fEEG1] = fourier_dt(EEG1,Fs,'full');
[MEEG2,phEEG2,fEEG2] = fourier_dt(EEG2,Fs,'full');

[MEEG1a,phEEG1a,fEEG1a] = fourier_dt(EEG1,Fs,'half');
[MEEG2a,phEEG2a,fEEG2a] = fourier_dt(EEG2,Fs,'half');

% plot the magnitude spectra of the two EEG signals
figure
subplot(2,2,1)
plot(fEEG1,MEEG1)
xlim([-200 200])
ylabel('|X(f)| (mV)')
title('Two-Sided Spectra for EEG1')
xlabel('f (Hz)')
subplot(2,2,2)
plot(fEEG2,MEEG2)
xlim([-200 200])
ylabel('|X(f)| (mV)')
title('Two-Sided Spectra for EEG2')
xlabel('f (Hz)')
subplot(2,2,3)
plot(fEEG1a,MEEG1a)
xlim([0 200])
ylabel('|X(f)| (mV)')
title('One-Sided Spectra for EEG1')
xlabel('f (Hz)')
subplot(2,2,4)
plot(fEEG2a,MEEG2a)
xlim([0 200])
ylabel('|X(f)| (mV)')
title('One-Sided Spectra for EEG2')
xlabel('f (Hz)')

%Question 2

%Delta EEG1
indexDelta1 = (fEEG1 > -3) & (fEEG1 < 3);
rangeDelta1 = find(indexDelta1);
bandPowerDelta1 = sum(MEEG1(rangeDelta1).^2);
bandwidthDelta1 = 3;

%Delta EEG2
indexDelta2 = (fEEG2 > -3) & (fEEG2 < 3);
rangeDelta2 = find(indexDelta2);
bandPowerDelta2 = sum(MEEG2(rangeDelta2).^2);
bandwidthDelta2 = 3;

%Theta EEG1
indexTheta1r1 = (fEEG1 >= 3) & (fEEG1 < 8);
indexTheta1r2 = (fEEG1 <= -3) & (fEEG1 > -8);
rangeTheta1r1 = find(indexTheta1r1);
rangeTheta1r2 = find(indexTheta1r2);
bandPowerTheta1 = sum(MEEG1(rangeTheta1r1).^2) + sum(MEEG1(rangeTheta1r2).^2);
bandwidthTheta1 = 5;

%Theta EEG2
indexTheta2r1 = (fEEG2 >= 3) & (fEEG2 < 8);
indexTheta2r2 = (fEEG2 <=-3) & (fEEG2 > -8);
rangeTheta2r1 = find(indexTheta2r1);
rangeTheta2r2 = find(indexTheta2r2);
bandPowerTheta2 = sum(MEEG2(rangeTheta2r1).^2) + sum(MEEG2(rangeTheta2r2).^2);
bandwidthTheta2 = 5;

%Alpha EEG1
indexAlpha1r1 = (fEEG1 >= 8) & (fEEG1 < 13);
indexAlpha1r2 = (fEEG1 <=-8) & (fEEG1 > -13);
rangeAlpha1r1 = find(indexAlpha1r1);
rangeAlpha1r2 = find(indexAlpha1r2);
bandPowerAlpha1 = sum(MEEG1(rangeAlpha1r1).^2) + sum(MEEG1(rangeAlpha1r2).^2);
bandwidthAlpha1 = 5;

%Alpha EEG2
indexAlpha2r1 = (fEEG2 >= 8) & (fEEG2 < 13);
indexAlpha2r2 = (fEEG2 <=-8) & (fEEG2 > -13);
rangeAlpha2r1 = find(indexAlpha2r1);
rangeAlpha2r2 = find(indexAlpha2r2);
bandPowerAlpha2 = sum(MEEG2(rangeAlpha2r1).^2) + sum(MEEG2(rangeAlpha2r2).^2);
bandwidthAlpha2 = 5;

%Beta EEG1
indexBeta1r1 =(fEEG1 >= 13) & (fEEG1 < 25);
indexBeta1r2 = (fEEG1 <=-13) & (fEEG1 > -25);
rangeBeta1r1 = find(indexBeta1r1);
rangeBeta1r2 = find(indexBeta1r2);
bandPowerBeta1 = sum(MEEG1(rangeBeta1r1).^2) + sum(MEEG1(rangeBeta1r2).^2);
bandwidthBeta1 = 12;

%Beta EEG2
indexBeta2r1 = (fEEG2 >= 13) & (fEEG2 < 25);
indexBeta2r2 = (fEEG2 <=-13) & (fEEG2 > -25);
rangeBeta2r1 = find(indexBeta2r1);
rangeBeta2r2 = find(indexBeta2r2);
bandPowerBeta2 = sum(MEEG2(rangeBeta2r1).^2) + sum(MEEG2(rangeBeta2r2).^2);
bandwidthBeta2 = 12;

%Gamma EEG1
indexGamma1r1 = (fEEG1 >= 25) & (fEEG1 < 100);
indexGamma1r2 = (fEEG1 <=-25) & (fEEG1 > -100);
rangeGamma1r1 = find(indexGamma1r1);
rangeGamma1r2 = find(indexGamma1r2);
bandPowerGamma1 = sum(MEEG1(rangeGamma1r1).^2) + sum(MEEG1(rangeGamma1r2).^2);
bandwidthGamma1 = 75;

%Gamma EEG2
indexGamma2r1 = (fEEG2 >= 25) & (fEEG2 < 100);
indexGamma2r2 = (fEEG2 <=-25) & (fEEG2 > -100);
rangeGamma2r1 = find(indexGamma2r1);
rangeGamma2r2 = find(indexGamma2r2);
bandPowerGamma2 = sum(MEEG2(rangeGamma2r1).^2) + sum(MEEG2(rangeGamma2r2).^2);
bandwidthGamma2 = 75;

%Power and Normalized Power calculation
powerEEG1 = [bandPowerDelta1, bandPowerTheta1, bandPowerAlpha1, bandPowerBeta1, bandPowerGamma1];
normalizedPowerEEG1 = [bandPowerDelta1/bandwidthDelta1, bandPowerTheta1/bandwidthTheta1, bandPowerAlpha1/bandwidthAlpha1, bandPowerBeta1/bandwidthBeta1, bandPowerGamma1/bandwidthGamma1];

powerEEG2 = [bandPowerDelta2, bandPowerTheta2, bandPowerAlpha2, bandPowerBeta2, bandPowerGamma2];
normalizedPowerEEG2 = [bandPowerDelta2/bandwidthDelta2, bandPowerTheta2/bandwidthTheta2, bandPowerAlpha2/bandwidthAlpha2, bandPowerBeta2/bandwidthBeta2, bandPowerGamma2/bandwidthGamma2];

%Plotting Band Power and Normalized Power across different Frequency Bands
figure,
b = categorical ({'Delta', 'Theta', 'Alpha', 'Beta', 'Gamma'});
bands = reordercats(b, {'Delta', 'Theta', 'Alpha', 'Beta', 'Gamma'});
subplot(2,2,1)
bar(bands,powerEEG1)
xlabel("Frequency Bands")
ylabel("Power (\muV^2)")
ylim ([0 500])
title("EEG1 Band Powers")
subplot(2,2,2)
bar(bands,normalizedPowerEEG1)
xlabel("Frequency Bands")
ylabel("Normalized Power (\muV^2/Hz)")
title("EEG1 Normalized Band Powers")
subplot(2,2,3)
bar(bands,powerEEG2)
xlabel("Frequency Bands")
ylabel("Power (\muV^2)")
title("EEG2 Band Powers")
subplot(2,2,4)
bar(bands,normalizedPowerEEG2)
xlabel("Frequency Bands")
ylabel("Normalized Power (\muV^2/Hz)")
title("EEG2 Normalized Band Powers")
