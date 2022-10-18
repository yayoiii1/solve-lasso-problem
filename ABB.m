function[res]=ABB(A,b,x,x1,mu,times)
s = x1 - x;
y = df(A,b,x1,mu) - df(A,b,x,mu);
BB1 = transpose(s)*y/(transpose(y)*y);
BB2 = transpose(s)*s/(transpose(s)*y);

if mod(times,2)
    alpha = BB2;
else
    alpha = BB1;
end
res = alpha;
