function partFour = bonusIV(f)
    n = -5:5;
    impulse = [0 0 0 0 0 1 0 0 0 0 0];
    step = [0 0 0 0 0 1 1 1 1 1 1]; 
    impulseOutput = f(n, impulse);
    stepOutput = f(n, step);
    
    stepDiff = diff(stepOutput);
    stepDiff = [0 stepDiff]; %% Since first differences are calculated, the output would have one less value. This is why a 0 was added to the beginning of the array.
    
    partFour = "First Difference of Unit Step and Unit Impulse Output ARE Equal";
    for i = 1:length(n)
        if round(stepDiff(i), 4) ~= round(impulseOutput(i), 4)
            partFour = "First Difference of Unit Step and Unit Impulse Output ARE NOT Equal";
        end
    end
end
