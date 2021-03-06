% Checks characteristics of any system, f, inhibits homogeneity or
% heterogeneity (non-linear)
% Parameter must be passed as @f in command line
function o = bonus2_scaling(f)
    n = -5:5;
    d = [0 0 0 0 0 1 0 0 0 0 0]; % test function: dirac[n]
    a = [1, 2, 100, 0, -1, -100]; % test amplitudes
    
    o = "Homogeneous";
    
    f_d = f(n, d);
    for i = 1:numel(a)
        f_ad = f(n, a(i)*d);
        for j = 1:numel(n)
            if f_d(j) ~= 0 && round(f_ad(j) / f_d(j), 4) ~= a(i)
                [f_ad(j)/f_d(j) a(i)]
                o = "Heterogeneous";
            end
        end
    end
end