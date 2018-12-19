%legendre
prompt = 'Value of n? ';
n = input(prompt);
prompt = 'Value of x? ';
x = input(prompt);

if (n>=0 && n<=10) && (x>=-1 && x<=1)
    sprintf('Pn(x) = %f',pol_legendre(n,x))
else
    disp('PLease: x in [-1,1] and n in [1,2,...,10]');
end


function p = pol_legendre(n,x)
%local function
if n==0
    p=1;
end

if n==1
    p=x;
end

if n>1
    p = ((2*n-1)/n)*x*pol_legendre(n-1,x) - ((n-1)/n)*pol_legendre(n-2,x);
end
end

        
    