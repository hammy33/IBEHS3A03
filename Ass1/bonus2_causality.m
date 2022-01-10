% Checks characteristics of any system, f, is casual or non-causal
% Parameter must be passed as @f in command line
function o = bonus2_causality(f)
    n = -5:5;
    input = [0 0 0 0 0 0 1 2 3 4 5]; % test function: r[n]
    output = f(n, input);
    index = 0;
    for i=1:length(input)
        if input(i) ~= 0
            index = i;
            break
        end
    end
    for i=1:(index-1)
        if output(i)~= 0
            o = "Non-causal";
            break
        end
        o = "Causal";
    end
end