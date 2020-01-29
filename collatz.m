for j = 1:10
    reps = 0;
    start = j;
    if mod(start,2) == 1
        start = (3*start + 1)/2;
        reps = reps + 2;
    else
        start = start/2;
        reps = reps + 1;
    end
end