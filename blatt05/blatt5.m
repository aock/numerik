%clf
%clear all
A = [1,-1;-1,5];
%A=[2,0;0,10];
b = [0;0];

x0 = [5;3];
my_eps=1e-4;

kx = linspace(-6,6,500);
ky = kx;
[X,Y] = meshgrid(kx,ky);
Z = A(1,1)*X.^2+(A(1,2)+A(2,1))*X.*Y+A(2,2)*Y.^2;

%Gradientenverfahren
Xk1 = mygrad(A,b,my_eps,x0);
tmpY1 = Xk1(2,:);
tmpX1 = Xk1(1,:);
Zk1 = A(1,1)*tmpX1.^2+(A(1,2)+A(2,1))*tmpX1.*tmpY1+A(2,2)*tmpY1.^2;


%konjugiertes Gradientenverfahren
Xk2 = myconjgrad(A,b,my_eps,x0); %liefert x^(k) für jeden Schritt
tmpY2 = Xk2(2,:);
tmpX2 = Xk2(1,:);
Zk2 = A(1,1)*tmpX2.^2+(A(1,2)+A(2,1))*tmpX2.*tmpY2+A(2,2)*tmpY2.^2;

subplot(1,2,1)
contour(X,Y,Z,Zk1)
colorbar
title('Gradientenverfahren')
hold on
plot(Xk1(1,:),Xk1(2,:),'o-')
axis equal
hold off


subplot(1,2,2)
contour(X,Y,Z,Zk2)
colorbar
title('konjugiertes Gradientenverfahren')
hold on
plot( Xk2(1,:), Xk2(2,:), 'o-' )
axis equal
hold off

