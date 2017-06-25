function A=devec(v)
%Input: v \in \CC^{n^2}
%Output: A \in \CC^{n \times n}, Spalten der Matrix werden mit
%Vektoreintraegen aufgefuellt
n=sqrt(length(v));
A=reshape(v,n,n);
end