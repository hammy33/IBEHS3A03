% Checks characteristics of any system, f, follows the linear superposition
% principle or not
% Parameter must be passed as @f in command line
function o = bonus2_additivity(f)
    n = -5:5;
    d = [0 0 0 0 0 1 0 0 0 0 0]; % test function: dirac[n]
    u = [0 0 0 0 0 1 1 1 1 1 1]; % test function: u[n]
    a = [1, 2, 100, 0, -1, -100]; % test amplitudes
    
    o = "Additive";
    
    f_d = f(n, d);
    f_u = f(n, u);
    for i = 1:numel(a)
        for j = 1:numel(a)
            f_adau = a(i)*f_d + a(j)*f_u;
            f_ij = f(n, a(i)*d + a(j)*u);
            for k = 1:numel(n)
                if round(f_adau(k), 4) ~= round(f_ij(k), 4)
                    o = "Non-additive";
                end
            end
        end
    end
end