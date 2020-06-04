function x = calc_x1(m)
T = pi/2
for n = 1:m
    b(n) = (-1+((-1)^n))/(n*pi);
end

a(1)=1;
for n = 2:m+1
    a(n) = sin(2*pi)/(n*pi);
end

x = SF_trig(a,b,T);