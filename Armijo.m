clc;
clear;
m = 512;n = 1024;r = 0.1;
A = randn(m,n);
u = sprandn(n,1,r);
b = A*u;
mu1 = 10^-3;
del1 = (10^-3)*(10^-3);

x = zeros(n,1);
X1 = transpose([x;f_hat(A,b,x,mu1)]);
X2 = transpose([x;f_hat(A,b,x,mu2)]);

f_star1 = mu1 * norm(u,1);
f_star2 = mu2 * norm(u,1);

times = 0;
while 1
    d = (-1)*df(A,b,x,mu1);
    x1 = x + Alpha(A,b,x,mu1)*d;
    times = times + 1;
    if stop(A,b,x,x1,times,mu1)
        break;
    end
    x = x1;
    k = (f_hat(A,b,x,mu1)-f_star1)/f_star1;
    x2 = [x;k];
    X1 = [X1;transpose(x2)];
end
figure(1);
z = (1 : n);
plot(z, u,'ro');
hold on;
plot(z, x,'b*');

disp('Armojo Method Completed')