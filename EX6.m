n=5
x = linspace(0,3*pi);
for n=1:5
    y = sin_taylor(n,x);
    plot(x,y)
    hold on
end
plot(x, sin(x), '--')
%Axe limits
axis([0 3*pi -5 5])
legend('n=1','n=2', 'n=3','n=4','n=5','sin')

function out = sin_taylor(n,x)
out=0;
for k=0:n
    out=out+((-1)^k/factorial(2*k+1))*x.^(2*k+1);
end
end
