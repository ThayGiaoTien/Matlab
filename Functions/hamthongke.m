function [mean,std] = hamthongke(x1,x2,x3)
X = [x1 x2 x3];
mean = sum(X)/ length(X);

std = 0;

for i = 1: length(X)
    std = std + (X(i) - mean)^2;

end

std = sqrt(std/(length(X)- 1));


end
