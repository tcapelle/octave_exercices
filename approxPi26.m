function out = approxPi26(n)
%     pi^2/6 ~ 1.6449
% We are doing this, in one line
%     out=0;
%     for i=1:n
%         out = out + 1/(i^2);
%     end
    
    out = sum(1./(1:n).^2);
end