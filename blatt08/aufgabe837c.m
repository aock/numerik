r=linspace(-2,2,300);
[U,V]=meshgrid(r,r);
Z=U+1i*V;

%exakte Loesungen
z1=1;
z2=exp(2*pi*1i/3);
z3=exp(pi*1i*4/3);

Z1=[]; %Startwerte die nach z1 konvergieren
Z2=[]; %Startwerte die nach z2 konvergieren
Z3=[]; %Startwerte die nach z3 konvergieren

kmax=30;
v=3;
a=1;
myeps=0.1;

C=zeros(size(Z));
for k=1:size(Z,1)
	for j=1:size(Z,2)
		z=Z(j,k);
		X = heron(v,a,kmax,z);
			
		t1=norm(X(end)-z1);
		t2=norm(X(end)-z2);
		t3=norm(X(end)-z3);
	
		
		if(t1<myeps)
			C(j,k)=4;
			Z1=[Z1;z];
		elseif(t2<myeps)
			C(j,k)=2;
			Z2=[Z2;z];
		elseif(t3<myeps)
			C(j,k)=3;
			Z3=[Z3;z];
		else 
			fprintf('Keine Konvergenz nach kmax=%d für z=%f  %+f i \n',kmax,real(z),sign(imag(z))*abs(imag(z)))
			C(j,k)=1;
		end
	end


end
figure(2)
colormap(jet(4))
imagesc(r,r,C)
colorbar
colorbar('YTickLabel',{'keine Konvergenz','','a=exp(2 pi i/3)','','a=exp(pi i 4/3)','a=1',''})
