clc
clear all
f = @(x) x^2-29;
a=5;
b=6;
if(f(a)*f(b)>0)
    print('Wrong choice');
else
    temp=(a+b)/2;
    tol=0;
    while(tol<10^-3)
        if(f(a)*f(temp)<0)
            b=temp;
        else
            a=temp;
        end
        temp=(a+b)/2;
        tol=abs(f(temp));
    end
end
disp(temp)