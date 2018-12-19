%factoriel
prompt = 'Value of n? ';
n = input(prompt);
if (n>=0 && n<=20)
    sprintf('n! = %i',fact(n))
else
    disp('Exit program: n is not in [0,1,...,20]');
end

function f = fact(n)
    if n==0
        f=1;
    else
        f=1;
        for i=1:n
            f = f *i;
        end
    end
end

        