function partThree = bonusIII(f)
    n = -5:5;
    impulse = [0 0 0 0 0 1 0 0 0 0 0];
    step = [0 0 0 0 0 1 1 1 1 1 1]; 
    impulseOutput = f(n, impulse);
    stepOutput = f(n,step);
    impulseCumSum = cumsum(impulseOutput);
    
    partThree = "Cumulative Sum of Impulse and Step Output ARE Equal";
    for i = 1:length(n)
        if round(impulseCumSum(i), 4) ~= round(stepOutput(i), 4)
            partThree = "Cumulative Sum of Impulse and Step Output ARE NOT Equal";
        end
    end
end

    

