function x = calc_x3(s,m)
if s == "b"
    for n = 1:m
        l(n) = -(6/(4*n*pi));
    end
else
    for n = 1:m+1
        l(n) = 0;
    end
end
x = l;