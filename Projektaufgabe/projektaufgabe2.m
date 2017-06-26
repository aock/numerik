%	Autor:  ...
%	Kurs: Numerik Sommersemester 2017

Logn=2:10;

condT=zeros(Logn(end),1);
condU=zeros(Logn(end),1);

for logn=Logn
  n=2^logn;

  I=eye(n);
  
  % stelle die Matrix T auf
  T=applyT(I);

  % stelle die Matrix C^(-1/2)TC^(-1/2) auf
  c=constructC(n);
  U=applyInvSqrtC(c,I)*T*applyInvSqrtC(c,I);
  
  eigT=eig(T);
  eigU=eig(U);
  
  condT(logn)=cond(T);
  condU(logn)=cond(U);
  
  if logn==Logn(1)
    figure(1);    
    hold off
  end;
  loglog(n*ones(size(eigT)),eigT,'r.',n*ones(size(eigT)),eigU,'b.');
  hold on;
end;

axis([2^(Logn(1)-1),2^(Logn(end)+1),min(abs(eigT)),max(abs(eigU))]);

figure(2)
loglog(2.^Logn,condT(Logn),'r',2.^Logn,3.^Logn,'r-.',2.^Logn,condU(Logn),'b',2.^Logn,2.^(Logn-1),'b-.');
axis tight
