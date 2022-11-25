clc
clear all
format short
a=[1 1 0 0; 1 2 0 1; 0 0 3 3; 0 1 2 3];
b=[1;1;0;1];
n=input('no. of iterations ')
e=0.001;
for i=1:n
    v1=a*b;
    E=max(abs(v1))
    v2=v1/E;
    if max(abs(v2-b))<e
        break
    end
    b=v2;
    i
    E
    v2
end