A= [10 8 -3 1 16; 2 10 1 -4 9; 3 -4 10 1 10; 2 2 -3 10 11];
n= size(A,1);
l= eye(n);
for j=1:n+1
for i=j+1:n
l(i,j)=A(i,j)./A(j,j);
for k=1:n+1
A(i,k)=A(i,k)-l(i,j)*A(j,k);
end
end
end
A
l
x(n)=A(n,n+1)/A(n,n);
for i=n-1:-1:1
sum= 0;
for j=i+1:n
sum= sum+A(i,j)*x(j);
end
x(i)=(A(i,n+1)-sum)/A(i,j);
end
x