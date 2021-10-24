function partSeven = bonusVII(lti, d)
  data = load(d);
  input = cell2mat(struct2cell(data));
  n = 1:length(input);
  output = lti(n, input);
  
  impulse = [0 0 0 0 0 1 0 0 0 0 0];
  convolution = conv(input, lti(-5:5, impulse));
  convolution = convolution([6:length(n)+5]);
  
  partSeven = "Output of signal and convolution of input signal and h_{lti}[n] ARE Equal";
  for i = 1:length(n)
    if round(output(i), 4) ~= round(convolution(i), 4)
      partSeven = "Output of signal and convolution of input signal and h_{lti}[n] ARE NOT Equal";
    end
  end
end