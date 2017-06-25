function Y=applyT(X)
%Input: n - Dimension der Toeplitz-Matrix T \in \CC^{n \times n}
%		  X=(x_1,...,x_s) x_i \in \RR^{n }	
%Output: Y=T*X;

%Berechne TX mittels Einbettung von T in zirkulante Matrix und FFTs
n=size(X,1);
c=(exp(-(1:n).^2/n)).';
c1=[c;c(end:-1:2)];
s=length(c);
Y=ifft(fft([X;zeros(s-1,size(X,2))]).*repmat(fft(c1),1,size(X,2)));
Y=Y(1:s,:);

%explizites Aufstellen der symmetrischen Toeplitz-Matrix
%r=c; %symmetrische Toeplitz-Matrix
%T=toeplitz(c,r); %explizites Aufstellen von T
%Y0=T*X;
%Y0-Y
end
