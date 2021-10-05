% Matlab script to test the additivity property for System 3.
% Running this script should output a subplot that is further analyzed in the report section of the assignment.

n = -5:5;
x = [0 0 0 0 0 0 1 2 3 4 5];
y = [0 0 1 2 3 4 5 0 0 0 0];
z = x + y

a = system3(n, x);
b = system3(n, y);
c = system3(n, z);

subplot(2,3,1);
input1 = stem(n,x),xlabel('n'),ylabel('x[n]'),title('Original Input 1')
subplot(2,3,2);
input2 = stem(n,y),xlabel('n'),ylabel('x[n]'),title('Original Input 2')
subplot(2,3,3);
input3 = stem(n,z),xlabel('n'),ylabel('x[n]'),title('Added Input')
subplot(2,3,4);
output1 = stem(n,a),xlabel('n'),ylabel('x[n]'),title('Original Output 1')
subplot(2,3,5);
output2 = stem(n,b),xlabel('n'),ylabel('x[n]'),title('Original Output 2')
subplot(2,3,6);
output3 = stem(n,c),xlabel('n'),ylabel('x[n]'),title('Added Output')
sgtitle('System 3 - Additivity Test') 

% It was determined that the additivity property does hold for System 3.