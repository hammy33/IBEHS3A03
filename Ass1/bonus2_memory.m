% Checks characteristics of any system, f, requiers memory or is
% memoryless.
% Parameter must be passed as @f in command line

function memory = bonus2_memory(f)
n = -5:5;
input1 = [0 0 0 0 0 0 1 0 0 0 0];
input2 = [0 0 0 0 0 1 1 0 0 0 0];
output1 = f(n, input1);
output2 = f(n, input2);
index1 = [];
index2 = [];
for i=1:length(input1)
    if input1(i) == input2(i)
        index1 = [index1, i];
    else
        index2 = [index2, i];
    
    end
end
for i=1:length(index2)
        if output1((index2(i))+1)~= output2((index2(i))+1)
            memory = "Memory";
            break
        end
        memory = "Memoryless";
end
