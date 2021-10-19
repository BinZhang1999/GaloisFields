% test for my functions
maxRun = 1e4;
len1 = 32;
len2 = 16;
for i = 1:maxRun % test correctness of myConvGF2
    u = (randn(1, len1)<0); u(len1) = true;
    v = (randn(1, len2)<0); v(len2) = true;
    x = (randn(1, len2)<0); x(len2) = true;
    
    u = mod(conv(u,x),2);
    v = mod(conv(v,x),2);
    
    r = myEuclideanGcdGF2(u, v);
end

