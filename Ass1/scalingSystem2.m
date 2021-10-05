% Matlab script to test the scaling property for System 2.
% Running this script should output a subplot that is further analyzed in the report section of the assignment.


n = -5:5;
x = [0 0 0 0 0 1 0 0 0 0 0];
y = -10 * [0 0 0 0 0 1 0 0 0 0 0];
a = system2(n, x);
b = system2(n, y);

subplot(2,2,1);
input1 = stem(n,x),xlabel('n'),ylabel('x[n]'),title('Original Input');
subplot(2,2,2);
input2 = stem(n,y),xlabel('n'),ylabel('x[n]'),title('New Input');
subplot(2,2,3);
output1 = stem(n,a),xlabel('n'),ylabel('y[n]'),title('Original Output');
subplot(2,2,4);
output2 = stem(n,b),xlabel('n'),ylabel('y[n]'),title('New Output');
sgtitle('System 2 - Scaling Test');

% It was determined that the scaling property does hold for System 2.