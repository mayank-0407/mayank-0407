f=@(x) cos(x)^2;
a=-0.25;
b=0.25;
h=(b-a)/n;
n=4;
sum=0;
for i=1:n-1
    z(i)=a+i*h;
    y(i)=f(z(i));
    sum=sum+2*y(i);
end
h/2*(f(a)+f(b)+sum)