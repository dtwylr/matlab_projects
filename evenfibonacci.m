fibonacci = [1;2];
for n = 3:50
    next = fibonacci(n-1)+fibonacci(n-2);
    if next < 4000000
        fibonacci(n) = next;
    else
        break
    end
end
total = 0;
for n = 1:length(fibonacci)
    if mod(fibonacci(n),2) == 0
        total = total + fibonacci(n);
    end
end