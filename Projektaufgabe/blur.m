function vecB=blur(vecA)
%Input: vecA \in RR^{N^2}
%Output: vecB=(T \otimes T) vecA (Kroneckerprodukt)
A=devec(vecA);
B=applyT(A.');
B=applyT(B.');
vecB=B(:);
end