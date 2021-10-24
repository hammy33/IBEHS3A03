n = -5:5;
impulse = [0 0 0 0 0 1 0 0 0 0 0];
step = [0 0 0 0 0 1 1 1 1 1 1]; 


%%
%Part I and II
impulseOutput = ltisystemC(n, impulse);
stepOutput = ltisystemC(n, step);
 
subplot(2,1,1);
impulsePlot = stem(n, impulseOutput), xlabel('n'), ylabel('x[n]'),title('System C Output for Unit Impulse');
subplot(2,1,2);
stepPlot = stem(n, stepOutput), xlabel('n'), ylabel('x[n]'),title('System C Output for Unit Step');

%%
%Part III
impulseCumSum = cumsum(impulseOutput);

%subplot(2,1,1);
%stepPlot = stem(n, stepOutput), xlabel('n'), ylabel('x[n]'),title('System C Output for Unit Step');
%subplot(2,1,2);
%impulsePlot = stem(n, impulseCumSum), xlabel('n'), ylabel('x[n]'),title('System C Output for Cumulative Sum of Unit Impulse');

%%
%Part IV
%stepDiff = diff(stepOutput);
%stepDiff = [0 stepDiff] %% Since first differences are calculated, the output would have one less value. This is why a 0 was added to the beginning of the array.

%subplot(2,1,1);
%impulsePlot = stem(n, impulseOutput), xlabel('n'), ylabel('x[n]'),title('System C Output for Unit Impulse');
%subplot(2,1,2);
%stepPlot = stem(n, stepDiff), xlabel('n'), ylabel('x[n]'),title('System C Output for First Difference of Unit Step');

%%
%Part V
%n3 = 1:2000;
%ECGdata = load('ECG_assignment2.mat');
%ECGinput = cell2mat(struct2cell(ECGdata));
%ECGoutput = ltisystemC(n3, ECGinput);

%subplot(2,1,1);
%ECGinputPlot = plot(n3, ECGinput), xlabel('n'), ylabel('x[n]'),title('ECG Signal Input');
%subplot(2,1,2);
%ECGoutputPlot = plot(n3, ECGoutput), xlabel('n'), ylabel('x[n]'),title('System C Output for ECG Signal');


%%
%Part VI
%n4 = 1:660001;
%respirationData = load('respiration_assignment2.mat');
%respirationInput = cell2mat(struct2cell(respirationData));
%respirationOutput = ltisystemC(n4, respirationInput);

%subplot(2,1,1);
%respirationInputPlot = plot(n4, respirationInput), xlabel('n'), ylabel('x[n]'),title('Respiration Signal Input');
%subplot(2,1,2);
%respirationOutputPlot = plot(n4, respirationOutput), xlabel('n'), ylabel('x[n]'),title('System C Output for Respiration Signal');


%%
%Part VII
n3 = 1:2000;
ECGdata = load('ECG_assignment2.mat');
ECGinput = cell2mat(struct2cell(ECGdata));
ECGoutput = ltisystemC(n3, ECGinput)

% n4 = 1:660001;
% respirationData = load('respiration_assignment2.mat');
% respirationInput = cell2mat(struct2cell(respirationData));
% respirationOutput = ltisystemC(n4, respirationInput);
% 
% impulse = [0 0 0 0 0 1 0 0 0 0 0];
% ECGconvolution = conv(ECGoutput, impulse);
% ECGconvolution = ECGconvolution([6:2005]);
% respirationConvolution = conv(respirationOutput, impulse);
% respirationConvolution = respirationConvolution([6:660006]);
% 
% subplot(2,2,1);
% ECGoutputPlot = plot(n3, ECGoutput), xlabel('n'), ylabel('x[n]'),title('System C Output for ECG Signal');
% subplot(2,2,2);
% respirationOutputPlot = plot(n4, respirationOutput), xlabel('n'), ylabel('x[n]'),title('System C Output for Respiration Signal');
% subplot(2,2,3);
% ECGconvolutionPlot = plot(n3, ECGconvolution),xlabel('n'),ylabel('y[n]');
% subplot(2,2,4);
% respirationConvolutionPlot = plot(n4, respirationConvolution),xlabel('n'),ylabel('y[n]');




