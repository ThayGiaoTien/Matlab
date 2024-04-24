function cos_taylor = hamcosxapxi(x)
% Calculate sin value of x[rad] by taylor series. 
% - To save memory, clamp x in range -2*pi: 2*pi
% - Return the result when error is less than 1e-5
x= x- floor(x/(2*pi))*2*pi
format long;
cos_chinhxac= cos(x);
cos_taylor=0;
i=0;
saiso= abs(cos_chinhxac);
while saiso>1e-5
    cos_taylor= cos_taylor+((-1)^i)*(x^(2*i))/(factorial(2*i));
    saiso = abs(cos_chinhxac- cos_taylor);
    i=i+1;
end
fprintf('result after %d loops\n', i)
fprintf('saiso: %f\n', saiso)
fprintf('cos_chinhxac: %f\n', cos_chinhxac)
fprintf('cos_taylor: %f\n', cos_taylor)
end
