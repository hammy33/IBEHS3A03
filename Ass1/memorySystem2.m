% Matlab script to test the memory property for System 2.
% Running this script should output a subplot that is further analyzed in the report section of the assignment.

n = -5:5;
a = [0 0 0 0 0 1 0 0 0 0 0];
b = [0 0 0 0 1 1 0 0 0 0 0];
 
original = system2(n, a);
shifted = system2(n, b);
 
subplot(2,2,1);
originalinput = stem(n, a), xlabel('n'), ylabel('x[n]'),title('x_1[n] = \delta[x]');
subplot(2,2,2);
shiftedinput = stem(n, b), xlabel('n'), ylabel('x[n]'),title('x_2[n] = \delta[x] + \delta[n+1]');
subplot(2,2,3);
originaloutput = stem(n, original),xlabel('n'),ylabel('y[n]');
subplot(2,2,4);
shiftedoutput = stem(n, shifted),xlabel('n'),ylabel('y[n]');
sgtitle('System 2 - Memory Test');

% System 2 requires memory.