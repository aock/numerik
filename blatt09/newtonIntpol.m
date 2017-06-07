function p=newtonIntpol(x0,y0,x)

n=length(y0);
c=y0;
coeff=[y0(1);zeros(n-1,1)];

for j=1:n-1
    
    c = (c(2:n-j+1)-c(1:n-j))./(x0(1+j:n)-x0(1:n-j)); 
    coeff(j+1) = c(1);
end

p = (x-x0(n-1))*coeff(n);
for k=n-1:-1:2
    p=(x-x0(k-1)).*(coeff(k)+p);
end
p=p+coeff(1);

end
