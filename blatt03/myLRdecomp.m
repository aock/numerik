function [L,R] = myLRdecomp(A)

n=size(A,2);
I=eye(n);

L=I;

e_k = zeros(n,1);
l_k = zeros(n,1);

for k=1:n-1
	
	if(k>1)
		e_k(k-1,1) = 0;
		l_k(k:n,1) = 0;
	end
	e_k(k,1) = 1;
		
	a_k = A(:,k);	
	
	%Division mit dem Pivotelement
	l_k(k+1:n,1) = a_k(k+1:n,1) / a_k(k,1);
    
	A = (I - l_k * e_k' ) * A;
	
	L = L + l_k * e_k';

end

R=A;

end
