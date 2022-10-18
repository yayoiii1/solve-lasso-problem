function[res]=stop(A,b,x,x1,times,mu)
if ((abs(f(A,b,x1,mu)-f(A,b,x,mu))<10^-5)||(norm(df(A,b,x1,mu),2)<10^-3)||(times >= 3000))
    res = 1;
else
    res = 0;
end