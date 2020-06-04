function x = calc_x2(s,m)
if s == "b"
    for n = 1:m
        l(n) = 0;
    end
else
    for n = 1:m+1
        l(n) = (2*(4*n*sin((4*n)/pi) + pi*cos((4*n)/pi)-pi))/(pi^3*n^2);
    end
end
x = l;
