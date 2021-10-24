function partSeven = bonusVII(lti, d) % lti is the system, d is the .m file
  data = load(d);
  input = cell2mat(struct2cell(data));
  n = 1:length(input);
  output = lti(n, input);
  
  impulseResponse = lti(-5:5, [0 0 0 0 0 1 0 0 0 0 0]); % h[n]
  convolution = conv(input, impulseResponse);
  convolution = convolution([6:length(n)+5]);
  
  partSeven = "Output of signal and convolution of input signal and h[n] ARE Equal";
  for i = 1:length(n)
    if round(output(i), 3) ~= round(convolution(i), 3)
      partSeven = "Output of signal and convolution of input signal and h[n] ARE NOT Equal";
    end
  end
end