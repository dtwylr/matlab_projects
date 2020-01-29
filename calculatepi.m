iter = input('Enter the number of desired iterations: ');
myPi = 0;
for ind = 1:iter
    if mod(ind,2)
        myPi = myPi + 4/(ind*2-1);
    else
        myPi = myPi - 4/(ind*2-1);
    end
end
myPi

%%

iter = input('Enter the number of desired iterations: ');
myPi = 3;
alt = true;
for ind = 3:2:iter*2+2
    if alt == true
        myPi = myPi + 4/((ind-1)*ind*(ind+1));
        alt = false;
    else
        myPi = myPi - 4/((ind-1)*ind*(ind+1));
        alt = true;
    end
end
myPi
