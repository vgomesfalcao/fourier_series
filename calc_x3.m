function x = calc_x3(s,m)
if s == "b"
    for n = 1:m
        l(n) = (-1+((-1)^n))/(n*pi);
    end
else
    for n = 1:m+1
        l(n) = sin(0)/(n*pi);
    end
end
x = l;