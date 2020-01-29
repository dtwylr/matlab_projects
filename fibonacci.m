fib = [1 1]
len = 0;
while true
    fib = [fib (fib(end)+fib(end-1))];
    fib(end)
    len = length(num2str(in));
    if len>1000 
        break;
    end
end
len