function[res]=f_hat(A,b,x,mu)
res = (norm(A*x-b,2)/2) + (mu*norm(x,1));