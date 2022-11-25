clc
clear all
A=[2,-1,1;3,3,9;3,3,5];
m=size(A,1);
n=size(A,2);
l=eye(m);
for j=1:n-1
for i=j+1:m
l(i,j)=A(i,j)/A(j,j);
A(i,:)=A(i,:)-l(i,j)*A(j,:);
end
end
l
A