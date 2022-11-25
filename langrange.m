x=[0 0.25 0.5 0.75];
f=[1,1.64872,2.71828,4,48169];
y=length(x);
temp=0.43;
sum=0;
i=1;
for i=1:n
    for j=1:n
        if(i~=j)
            sum=sum+(f(i)*(temp-(x(j))/(x(i)-x(j))));
        end
    end
end
disp(sum)