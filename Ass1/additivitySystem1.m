% Matlab script to test the additivity property for System 1.
% Running this script should output a subplot that is further analyzed in the report section of the assignment.

n = -5:5;
x = [0 0 0 0 0 0 1 2 3 4 5];
y = [0 0 1 2 3 4 5 0 0 0 0];
z = x + y

a = system1(n, x);
b = system1(n, y);
c = system1(n, z);

subplot(2,3,1);
input1 = stem(n,x),xlabel('n'),ylabel('x[n]'),title('x_1[n] = r[n]')
subplot(2,3,2);
input2 = stem(n,y),xlabel('n'),ylabel('x[n]'),title('x_2[n] = r[n+4]')
subplot(2,3,3);
input3 = stem(n,z),xlabel('n'),ylabel('x[n]'),title('x[n] = x_1[n] + x_2[n]')
subplot(2,3,4);
output1 = stem(n,a),xlabel('n'),ylabel('y[n]')
subplot(2,3,5);
output2 = stem(n,b),xlabel('n'),ylabel('y[n]')
subplot(2,3,6);
output3 = stem(n,c),xlabel('n'),ylabel('y[n]')
sgtitle('System 1 - Additivity Test');

% It was determined that the additivity property does hold for System 1.