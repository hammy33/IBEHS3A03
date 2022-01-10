function partSeven = bonusVII(lti, d) % lti is the system, d is the .m file
  data = load(d);
  input = cell2mat(struct2cell(data));
  n = 1:length(input);
  output = lti(n, input);
  
  n = zeros(1,51);
  n(26) = 1;
  impulseResponse = lti(-25:25, n); % h[n]
  convolution = conv(input, impulseResponse);
  convolution = convolution([26:length(n)+25]);
  
  partSeven = "Output of signal and convolution of input signal and h[n] ARE Equal";
  for i = 1:length(n)
    if round(output(i), 3) ~= round(convolution(i), 3)
      partSeven = "Output of signal and convolution of input signal and h[n] ARE NOT Equal";
    end
  end
end