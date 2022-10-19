function[res]=f(A,b,x,mu)
del = (10^-3)*mu;

Nox = norm(x,2);
if Nox < del
    l=(1/(2*del))*x.*x;
else
    l=Nox-del/2;
end
L = sum(l);
res = (norm(A*x-b,2)^2/2) + (mu*L);