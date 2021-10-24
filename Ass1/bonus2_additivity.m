% Checks characteristics of any system, f, follows the linear superposition
% principle or not
% Parameter must be passed as @f in command line
function o = bonus2_additivity(f)
    n = -5:5;
    d = [0 0 0 0 0 1 0 0 0 0 0]; % test function: dirac[n]
    u = [0 0 0 0 0 1 1 1 1 1 1]; % test function: u[n]
    
    o = "Additive";
    
    f_d = f(n, d);
    f_u = f(n, u);
    
    f_du1 = f_d + f_u;
    f_du2 = f(n, d+u);
    for k = 1:numel(n)
        if round(f_du1, 4) ~= round(f_du2, 4)
            o = "Non-additive";
        end 
    end
end