function[res]=df(A,b,x,mu)
dL = x;
del = (10^-3)*mu;
for i = 1:length(x)
    if abs(x(i)) > del
        dL(i) = sign(x(i));
    else
        dL(i) =  x(i)/del;
    end
end
res = transpose(A)*(A*x-b)+(mu*dL);