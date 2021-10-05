n = -5:5;
x1 = [0 0 0 0 0 1 0 0 0 0 0];
x2 = [0 0 0 0 1 0 0 0 0 0 0];
x3 = [0 0 0 0 0 0 1 0 0 0 0];

sys1_x1 = system1(n, x1);
sys2_x1 = system2(n, x1);
sys3_x1 = system3(n, x1);

sys1_x2 = system1(n, x2);
sys2_x2 = system2(n, x2);
sys3_x2 = system3(n, x2);

sys1_x3 = system1(n, x3);
sys2_x3 = system2(n, x3);
sys3_x3 = system3(n, x3);

figure('Name', 'System 1 Time Invariance Tests', 'NumberTitle', 'Off');
t1 = tiledlayout(2, 3);
nexttile
stem(n, x1), ylabel('x[n]'), title('x[n] = \delta[n]');
nexttile
stem(n, x2), ylabel('x[n]'), title('x[n] = \delta[n+1]');
nexttile
stem(n, x3), ylabel('x[n]'), title('x[n] = \delta[n-1]');
nexttile
stem(n, sys1_x1), ylabel('y[n]');
nexttile
stem(n, sys1_x2), ylabel('y[n]');
nexttile
stem(n, sys1_x3), ylabel('y[n]');
xlabel(t1, 'n');
sgtitle('System 1 - Time Invariance Test');

figure('Name', 'System 2 Time Invariance Tests', 'NumberTitle', 'Off');
t2 = tiledlayout(2, 3);
nexttile
stem(n, x1), ylabel('x[n]'), title('x[n] = \delta[n]');
nexttile
stem(n, x2), ylabel('x[n]'), title('x[n] = \delta[n+1]');
nexttile
stem(n, x3), ylabel('x[n]'), title('x[n] = \delta[n-1]');
nexttile
stem(n, sys2_x1), ylabel('y[n]');
nexttile
stem(n, sys2_x2), ylabel('y[n]');
nexttile
stem(n, sys2_x3), ylabel('y[n]');
xlabel(t2, 'n');
sgtitle('System 2 - Time Invariance Test');

figure('Name', 'System 3 Time Invariance Tests', 'NumberTitle', 'Off');
t3 = tiledlayout(2, 3);
nexttile
stem(n, x1), ylabel('x[n]'), title('x[n] = \delta[n]');
nexttile
stem(n, x2), ylabel('x[n]'), title('x[n] = \delta[n+1]');
nexttile
stem(n, x3), ylabel('x[n]'), title('x[n] = \delta[n-1]');
nexttile
stem(n, sys3_x1), ylabel('y[n]');
nexttile
stem(n, sys3_x2), ylabel('y[n]');
nexttile
stem(n, sys3_x3), ylabel('y[n]');
xlabel(t3, 'n');
sgtitle('System 3 - Time Invariance Test');