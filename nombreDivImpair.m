function divs = nombreDivImpair(n)
    %function that returns odd divisors of n
    k=1  %number of divisors
    for i=1:n
        % Check if i divides n and if i is odd
        if mod(n, i)==0 && mod(i,2)==1 
           divs(k) = i;
           k = k +1;
        end
    end  
end