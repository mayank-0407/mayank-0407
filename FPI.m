clc
clear all
x=4;
f= @(x) x^2-17;
g=@(x) x-(f(x))/(2*x);
y=g(x);
count=0;
tol=x-y;
while(tol>10^-3)
    x=y;
    y=g(x);
    count=count+1;
    tol=abs(x-y);
end
disp(x)
disp(y)