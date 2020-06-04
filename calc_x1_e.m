function x = calc_x1_e(m)
T = pi/2;
nd = ceil(-m/2);
for n = 1:m
    nd
    if nd == 0
        c(n) = 1/2;
    else
        %c(n) = ( (1-((-1)^n)) / (j*pi*n) );
        %c(n) = ( 1*j*( (exp(-2*pi*j*n)) - (exp(-pi*n*j)) ) )/2*pi*n;
        c(n) = (-1+((-1)^nd))/(j*2*pi*nd);
    end
    nd = nd + 1;
end

x = SF_exp(c,T);