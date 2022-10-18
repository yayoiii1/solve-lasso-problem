clc;
clear;
m = 512;n = 1024;r = 0.1;
A = randn(m,n);
u = sprandn(n,1,r);
b = A*u;
mu1 = 10^-3;
del1 = (10^-3)*(10^-3);

x = zeros(n,1);
times = 0;
d = (-1)*df(A,b,x,mu2);
x1 = x + Alpha(A,b,x,mu2)*d;
times = times + 1;
X4 = transpose([x;f_hat(A,b,x,mu2)]);
k = (f_hat(A,b,x1,mu2)-f_star2)/f_star2;
xx = [x1;k];
X4 = [X4;transpose(xx)];
while 1
    x2 = x1 - ABB(A,b,x,x1,mu2,times)*df(A,b,x1,mu2);
    times = times + 1;
    if stop(A,b,x1,x2,times,mu2)
        break;
    end
    disp(times)
    x = x1; 
    x1 = x2;
    k = (f_hat(A,b,x1,mu2)-f_star2)/f_star2;
    x3 = [x;k];
    X4 = [X4;transpose(x3)];
end

disp('BB Method completed')