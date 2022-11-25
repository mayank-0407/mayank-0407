A=[4.63 -1.21 3.22; -3.07  5.48 2.11; 1.26 3.11 4.57];
B=[2.22; -3.17; 5.11];
[L U]=lu(sym(A));
disp('L=');disp(L)
disp('U=');disp(U)
Y=inv(L)*B;
X=inv(U)*Y;
X