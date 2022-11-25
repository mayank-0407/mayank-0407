clc
clear all
f= @(x) x^2-17;
g=@(x) 2*x;
x0=4;
tol=10^-5;
err=100;
while(err>tol)
    x1=x0-f(x0)/g(x0);
    err=abs(x1-x0);
    x0=x1;
end
disp(x0)