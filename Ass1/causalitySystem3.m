% Matlab script to test the causality property for System 3.
% Running this script should output a subplot that is further analyzed in the report section of the assignment.

n = -5:5;
x = [0 0 0 0 0 0 1 2 3 4 5];
 
system = system3(n, x);
 
subplot(2,1,1);
input = stem(n, x), xlabel('n'), ylabel('x[n]'),title('x[n] = r[n]');
subplot(2,1,2);
output = stem(n, system),xlabel('n'),ylabel('y[n]');
sgtitle('System 3 - Causality Test');

% System 3 is causal.