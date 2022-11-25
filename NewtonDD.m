clc;
clear all;
n=input('Enter number of data points: ');
for i=1:n
x(i)=input("Enter value of x(i): ");
f(i)=input("Enter value of f(i): ");
end
b=input("Enter point of interpolation b: ");
for i=1:n
d(1,i)=f(i);
end
for i=2:n
for j=1:n-i+1
d(i,j)=(d(i-1,j+1)-d(i-1,j))/(x(i+j-1)-x(j));
end
end
sum=d(1,1);
product=1;
for i=2:n
product=product*(b-x(i-1));
sum=sum+product*(d(i,1));
end
fprintf("value of f(%f) is: %f",b,sum);