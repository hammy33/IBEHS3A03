w = 0:.01:4; % frequencies at which the magnitude and phase response will be evaluated in rad/s
npoles = 2;  % number of filter poles
[z,p,k] = butter(npoles,[0.5 1.5],'s'); % npoles bandpass filter
[b,a] = zp2tf(z,p,k);
figure
if exist('tf','file')>0 % zp2tf(), tf() and bode() require control systems toolbox
    H = tf(b,a); % convert to a transfer function object
    bode(H,w);
else % freqs() only requires the signal processing toolbox
    freqs(b,a,w)
end
