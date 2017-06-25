%	Autor:  ...
%	Kurs: Numerik Sommersemester 2017

colormap(gray(256));
n=256;

load('blurA.mat'); %beinhaltet geblurtes Bild B als Matrix
vecB=B(:); %B->Vektor
subplot(2,2,2);
imagesc(B);
colorbar
title('geblurtes Bild')
axis equal;
axis([0,255,0,255])



%Rekonstruktion ohne Vorkonditionierung
vecAA=pcg(...) ; %entsprechend zu ergaenzen
AA=devec(vecAA); %Umwandlung in Matrix

subplot(2,2,3);
imagesc(AA)
title('Rekonstr. ohne Vordkond.');
colorbar
axis equal;
axis([0,255,0,255])

%Rekonstruktion mit Vorkonditionierung
vecAA2=pcg(...); %entsprechend zu ergaenzen
AA2=devec(vecAA2);%Umwandlung in Matrix

subplot(2,2,4);
imagesc(AA2)
title('Rekonstr. mit Vordkond.');
colorbar
axis equal;
axis([0,255,0,255])
