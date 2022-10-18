function[res]=Alpha(A,b,x,mu)
d = -1*df(A,b,x,mu);
gamma = 0.7;
c = 1e-3;
alpha =10^20;
while(((f(A,b,x+alpha*d,mu)>(f(A,b,x,mu)+c*alpha*transpose(df(A,b,x,mu)).*d)))&(alpha > 10^-20))
  alpha = gamma *alpha;
end
res = alpha;
