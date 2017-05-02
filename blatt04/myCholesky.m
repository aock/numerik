function C=myCholesky(A)
n=size(A,2);
C=zeros(n,n);	

for j=1:n %Zeilenindex
	
    %Nichtdiagonalelemente	
	for k=1:j-1 %Spaltenindex
		%display(k)
		tmp=0;
		for l=1:k-1
			tmp=tmp+C(j,l)*conj(C(k,l));
		end
		C(j,k)=1/C(k,k)*(A(j,k)-tmp);
	end
	
	%Diagonalelemente
	cj=abs(C(j,:));
	cj=cj.^2;
	C(j,j)=sqrt(A(j,j)-sum(cj(1:j-1)));
	
	end
end