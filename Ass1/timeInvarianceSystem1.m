% Matlab script to test the time invariant property for System 1.
% Running this script should output a subplot that is further analyzed in the report section of the assignment.

n = -5:5;
x = [0 0 0 0 0 1 1 1 1 1 1];
y = [0 0 1 1 1 1 1 1 1 1 1];

a = system1(n, x);
b = system1(n, y);

subplot(2,2,1);
input1 = stem(n,x),xlabel('n'),ylabel('x[n]'),title('x_1[n] = u[n]');
subplot(2,2,2);
input2 = stem(n,y),xlabel('n'),ylabel('x[n]'),title('x_2[n] = u[n+3]');
subplot(2,2,3);
output1 = stem(n,a),xlabel('n'),ylabel('y[n]');
subplot(2,2,4);
output2 = stem(n,b),xlabel('n'),ylabel('y[n]');
sgtitle('System 1 - Time Invariance Test');

% It was determined that system 1 is time invariant.