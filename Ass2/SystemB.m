n = -5:5;
impulse = [0 0 0 0 0 1 0 0 0 0 0];
step = [0 0 0 0 0 1 1 1 1 1 1]; 


%%
%Part I and II
impulseOutput = ltisystemB(n, impulse);
stepOutput = ltisystemB(n, step);

figure('Name', 'Part I and II', 'NumberTitle', 'Off')
subplot(2,1,1);
impulsePlot = stem(n, impulseOutput), xlabel('n'), ylabel('y[n]'),title('System B Output for Unit Impulse');
subplot(2,1,2);
stepPlot = stem(n, stepOutput), xlabel('n'), ylabel('y[n]'),title('System B Output for Unit Step');

%%
%Part III
impulseCumSum = cumsum(impulseOutput);

figure('Name', 'Part III', 'NumberTitle', 'Off')
subplot(2,1,1);
stepPlot = stem(n, stepOutput), xlabel('n'), ylabel('y[n]'),title('System B Output for Unit Step');
subplot(2,1,2);
impulsePlot = stem(n, impulseCumSum), xlabel('n'), ylabel('y[n]'),title('System B Output for Cumulative Sum of Unit Impulse');

%%
%Part IV
stepDiff = diff(stepOutput);
% diff(stepOutput) has length n-1 of stepOutput, hence an arbitrary value
% is used as the 0th value to make the length n and is not accounted for.
stepDiff = [0 stepDiff];

figure('Name', 'Part IV', 'NumberTitle', 'Off')
subplot(2,1,1);
impulsePlot = stem(n, impulseOutput), xlabel('n'), ylabel('y[n]'),title('System B Output for Unit Impulse');
subplot(2,1,2);
stepPlot = stem(n, stepDiff), xlabel('n'), ylabel('y[n]'),title('System B Output for First Difference of Unit Step');

%%
%Part V
n3 = 1:2000;
ECGdata = load('ECG_assignment2.mat');
ECGinput = cell2mat(struct2cell(ECGdata));
ECGoutput = ltisystemC(n3, ECGinput);

figure('Name', 'Part V', 'NumberTitle', 'Off')
subplot(2,1,1);
ECGinputPlot = plot(n3, ECGinput), xlabel('n'), ylabel('x[n]'),title('ECG Signal Input');
subplot(2,1,2);
ECGoutputPlot = plot(n3, ECGoutput), xlabel('n'), ylabel('y[n]'),title('System B Output for ECG Signal');


%%
%Part VI
n4 = 1:660001;
respirationData = load('respiration_assignment2.mat');
respirationInput = cell2mat(struct2cell(respirationData));
respirationOutput = ltisystemC(n4, respirationInput);

figure('Name', 'Part VI', 'NumberTitle', 'Off')
subplot(2,1,1);
respirationInputPlot = plot(n4, respirationInput), xlabel('n'), ylabel('x[n]'),title('Respiration Signal Input');
subplot(2,1,2);
respirationOutputPlot = plot(n4, respirationOutput), xlabel('n'), ylabel('y[n]'),title('System B Output for Respiration Signal');


%%
%Part VII
n3 = 1:2000;
ECGdata = load('ECG_assignment2.mat');
ECGinput = cell2mat(struct2cell(ECGdata));
ECGoutput = ltisystemB(n3, ECGinput);

n4 = 1:660001;
respirationData = load('respiration_assignment2.mat');
respirationInput = cell2mat(struct2cell(respirationData));
respirationOutput = ltisystemB(n4, respirationInput);

impulse = zeros(1,51);
impulse(26) = 1;
ECGconvolution = conv(ECGinput, impulseOutput);
ECGconvolution = ECGconvolution([6:2005]);
respirationConvolution = conv(respirationInput, impulseOutput);
respirationConvolution = respirationConvolution([6:660006]);

figure('Name', 'Part VII - ECG', 'NumberTitle', 'Off')
subplot(2,1,1);
ECGoutputPlot = plot(n3, ECGoutput), xlabel('n'), ylabel('y[n]'), title('System B Output for ECG Signal');
subplot(2,1,2);
ECGconvolutionPlot = plot(n3, ECGconvolution),xlabel('n'),ylabel('y[n]'), title('Convolution of ECG Signal and h_B[n]');

figure('Name', 'Part VII - Respiration', 'NumberTitle', 'Off')
subplot(2,1,1);
respirationOutputPlot = plot(n4, respirationOutput), xlabel('n'), ylabel('y[n]'), title('System B Output for Respiration Signal');
subplot(2,1,2);
respirationConvolutionPlot = plot(n4, respirationConvolution),xlabel('n'),ylabel('y[n]'), title('Convolution of Respiration Signal and h_B[n]');

%%
%FIR/IIR Check

n5 = -5:30;
impulse5 = zeros(1,36);
impulse5(6) = 1;

impulseOutput5 = ltisystemB(n5, impulse5);

figure('Name', 'FIR/IIR Check', 'NumberTitle', 'Off')
impulsePlot5 = stem(n5, impulseOutput5), xlabel('n'), ylabel('y[n]'),title('System B Output for Unit Impulse');
