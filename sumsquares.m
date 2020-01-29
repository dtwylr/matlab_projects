sum((1:100).^2);
sum(1:100).^2;
%%
sumofsquares = 0;
squareofsum = 0;
for j = 1:100
    sumofsquares = sumofsquares + j.^2;
    squareofsum = squareofsum + j;
end
squareofsum = squareofsum.^2;

diff = squareofsum-sumofsquares;