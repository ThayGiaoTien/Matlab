function sin_taylor = hamsinxapxi(x)
% Calculate sin value of x[rad] by taylor series. 
% To save memory, clamp x in range -2*pi: 2*pi
% Return the result when error is less than 1e-5
x= x- floor(x/(2*pi))*2*pi;
format long;
sin_chinhxac= sin(x);
sin_taylor=0;
i=0;
saiso= sin_chinhxac;
while saiso>1e-5
    sin_taylor= sin_taylor+((-1)^i)*(x^(2*i+1))/(factorial(2*i+1));
    saiso = abs(sin_chinhxac- sin_taylor);
    i=i+1;
end
fprintf('result after %d loops\n', i)
fprintf('saiso: %f\n', saiso)
fprintf('sin_chinhxac: %f\n', sin_chinhxac)
fprintf('sin_taylor: %f\n', sin_taylor)
end
