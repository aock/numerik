function Y=applyInvSqrtC(c,X)
%Input: c \in \CC^n:  erzeugender Vektor von zirkulanter Matrix C=circ(c)
%		  X =(x_1,...,x_s) x_i\in \RR^{n} 
%Output: Y=C^(-1/2)X

%n=length(c);
%C = toeplitz(c,[c(1);flipud(c(2:n))]);
%Y2=C^(-1/2)*X;
%X=vecToMat(vecX);
chat=fft(c);
cinv=ifft(1./sqrt(chat));
Y=ifft(fft(X).*repmat(fft(cinv),1,size(X,2)));

%Y-Y2

end