% Checks characteristics of any system, f, is time invariant or time variant
% Parameter must be passed as @f in command line
function o = bonus2_timeInv(f)
   n = -5:5;
   % test functions
   d1 = [0 0 0 0 0 1 0 0 0 0 0]; % dirac[n]
   d2 = [0 0 0 0 1 0 0 0 0 0 0]; % dirac[n+1]
   
   f_d1 = f(n, d1);
   f_d2 = f(n, d2);
   
   o = 'Time Invariant';
   for i = 1:numel(n)-1
       if f_d1(i+1) ~= f_d2(i)
           o = 'Time Variant';
       end
   end
end