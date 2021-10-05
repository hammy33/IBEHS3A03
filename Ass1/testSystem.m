n = -5:5;
x = [0 0 0 0 0 1 0 0 0 0 0];
a = system1(n, x);
b = system2(n, x);
c = system3(n, x);

a;
b;
c;

% System 1 %
 n = -5:5;
 %--------------------------&
%CAUSAL OR NON-CAUSAL%
x = [0 0 0 0 2 1 0 0 0 0 0];
y = [0 2 1 0 0 0 0 0 0 0 0];
 
sys1_caus_original = system1(n, x);
sys1_caus_shifted = system1(n, y);
 
sys1_caus_originalinput = stem(n, x), xlabel('n'), ylabel('x[n]'),title('System 1 - original Input');
sys1_caus_shiftedinput = stem(n, y), xlabel('n'), ylabel('x[n]'),title('System 1 - shifted Input');
sys1_caus_originalplot = stem(n, sys1_caus_original),xlabel('n'),ylabel('y[n]'),title('System 1 - Original Output');
sys1_caus_shiftedplot = stem(n, sys1_caus_shifted),xlabel('n'),ylabel('y[n]'),title('System 1 - Shifted Output');

 %--------------------------&
%MEMORY%

 a = [0 0 0 0 0 1 0 0 0 0 0];
 b = [0 0 0 0 1 1 0 0 0 0 0];
 
 sys1_mem_original = system1(n, a);
 sys1_mem_shifted = system1(n, b);
 
 sys1_mem_originalinput = stem(n, a), xlabel('n'), ylabel('x[n]'),title('System 1 - original Input');
 sys1_mem_shiftedinput = stem(n, b), xlabel('n'), ylabel('x[n]'),title('System 1 - shifted Input');
 sys1_mem_originaloutput = stem(n, sys1_mem_original),xlabel('n'),ylabel('y[n]'),title('System 1 - Original Output');
 sys1_mem_shiftedoutput = stem(n, sys1_mem_shifted),xlabel('n'),ylabel('y[n]'),title('System 1 - Shifted Output');
 %--------------------------&

 
 
 
 %SYSTEM 2%
 
 n = -5:5;
  %--------------------------&
%CAUSAL OR NON-CAUSAL%

x = [0 0 0 0 2 1 0 0 0 0 0];
y = [0 2 1 0 0 0 0 0 0 0 0];
 
sys2_caus_original = system2(n, x);
sys2_caus_shifted = system2(n, y);
 
sys2_caus_originalinput = stem(n, x), xlabel('n'), ylabel('x[n]'),title('System 2 - original Input');
sys2_caus_shiftedinput = stem(n, y), xlabel('n'), ylabel('x[n]'),title('System 2 - shifted Input');
sys2_caus_originalplot = stem(n, sys2_caus_original),xlabel('n'),ylabel('y[n]'),title('System 2 - Original Output');
sys2_caus_shiftedplot = stem(n, sys2_caus_shifted),xlabel('n'),ylabel('y[n]'),title('System 2 - Shifted Output');

 %--------------------------&
%MEMORY%

 a = [0 0 0 0 0 1 0 0 0 0 0];
 b = [0 0 0 0 1 1 0 0 0 0 0];
 
 sys2_mem_original = system2(n, a);
 sys2_mem_shifted = system2(n, b);
 
 sys2_mem_originalinput = stem(n, a), xlabel('n'), ylabel('x[n]'),title('System 2 - original Input');
 sys2_mem_shiftedinput = stem(n, b), xlabel('n'), ylabel('x[n]'),title('System 2 - shifted Input');
 sys2_mem_originaloutput = stem(n, sys2_mem_original),xlabel('n'),ylabel('y[n]'),title('System 2 - Original Output');
 sys2_mem_shiftedoutput = stem(n, sys2_mem_shifted),xlabel('n'),ylabel('y[n]'),title('System 2 - Shifted Output');
 %--------------------------&
 
 
  %SYSTEM 3%
 
n = -5:5;
  %--------------------------&
%CAUSAL OR NON-CAUSAL%

x = [0 0 0 0 2 1 0 0 0 0 0];
y = [0 2 1 0 0 0 0 0 0 0 0];
 
sys3_caus_original = system3(n, x);
sys3_caus_shifted = system3(n, y);
 
sys3_caus_originalinput = stem(n, x), xlabel('n'), ylabel('x[n]'),title('System 3 - original Input');
sys3_caus_shiftedinput = stem(n, y), xlabel('n'), ylabel('x[n]'),title('System 3 - shifted Input');
sys3_caus_originalplot = stem(n, sys3_caus_original),xlabel('n'),ylabel('y[n]'),title('System 3 - Original Output');
sys3_caus_shiftedplot = stem(n, sys3_caus_shifted),xlabel('n'),ylabel('y[n]'),title('System 3 - Shifted Output');

 %--------------------------&
%MEMORY%

 a = [0 0 0 0 0 1 0 0 0 0 0];
 b = [0 0 0 0 1 1 0 0 0 0 0];
 
 sys3_mem_original = system2(n, a);
 sys3_mem_shifted = system2(n, b);
 
 sys3_mem_originalinput = stem(n, a), xlabel('n'), ylabel('x[n]'),title('System 3 - original Input');
 sys3_mem_shiftedinput = stem(n, b), xlabel('n'), ylabel('x[n]'),title('System 3 - shifted Input');
 sys3_mem_originaloutput = stem(n, sys3_mem_original),xlabel('n'),ylabel('y[n]'),title('System 3 - Original Output');
 sys3_mem_shiftedoutput = stem(n, sys3_mem_shifted),xlabel('n'),ylabel('y[n]'),title('System 3 - Shifted Output');
 %--------------------------&