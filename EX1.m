n = 2000;
S=0;
for k=0:n
    S = S + 4 * ((-1)^k)/(2*k+1);
end
sprintf('La valeur de S = %f', S)
sprintf('La valeur de n = %i', n)