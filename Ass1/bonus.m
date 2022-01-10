%% Causality

% store the value of the input array in variable input
% store the value of the output array in variable output
% go through the input array until you get a non-zero input, and store the
% value of the index that it occurs at in variable index
% if there is a non-zero value that happens prior to index, then it is
% non-causal, otherwise it is causal

function bonus = bonus(system)
n = -5:5;
input = [0 0 0 0 0 0 1 2 3 4 5];
output = system(n, input);
index = 0;
for i=1:length(input)
    if input(i) ~= 0
        index = i
        break
    end
end
for i=1:(index-1)
        if output(i)~= 0
            bonus = "Non-causal";
            break
        end
        bonus = "Causal";
end


        
        %% Memory

% store the value of the input array in variable input
