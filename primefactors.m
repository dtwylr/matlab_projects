primes = 0;
for x = 1:1000
    if isprime(x);
        primes(x) = x;
    end
end