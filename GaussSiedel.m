A=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
B=[2.22; -3.17; 5.11];
P=[0;0;0];
n=input('no. of iterations');
N=length(B);
e=0.001;
X=zeros(N,1);
Y=zeros(N,1);
for j=1:n
    for i=1:N
        X(i)=(B(i)-A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
        P(i)=X(i);
    end
    j
    X
    if(abs(Y-X)<e)
        break
    end
    Y=X;
end
Z=[A*X]