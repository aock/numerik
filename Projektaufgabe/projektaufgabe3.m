%	Autor:  Alexander Mock
%	Kurs: Numerik Sommersemester 2017

n=256;
colormap(gray(n));

im = imread('blurB.png');
B = eye(size(im));
[width,height] = size(B);

for i=1:height
    for j=1:width
        B(i,j) = uint16(im(i,j));
    end
end



%load('blurA.mat'); %beinhaltet geblurtes Bild B als Matrix


disp(size(B));

vecB=B(:); %B->Vektor
subplot(2,2,2);
imagesc(B);
colorbar
title('geblurtes Bild')
axis equal;
axis([0,n-1,0,n-1])


funBlur = @blur;
%Rekonstruktion ohne Vorkonditionierung
vecAA=pcg(funBlur,vecB) ; %entsprechend zu ergaenzen
AA=devec(vecAA); %Umwandlung in Matrix

subplot(2,2,3);
imagesc(AA)
title('Rekonstr. ohne Vordkond.');
colorbar
axis equal;
axis([0,n-1,0,n-1])

%Rekonstruktion mit Vorkonditionierung
c=constructC(n);
precond=@(x) precondC(c,x);
vecAA2=pcg(funBlur, vecB, 10^(-6), 50, precond); %entsprechend zu ergaenzen
AA2=devec(vecAA2);%Umwandlung in Matrix

subplot(2,2,4);
imagesc(AA2)
title('Rekonstr. mit Vordkond.');
colorbar
axis equal;
axis([0,n-1,0,n-1])
