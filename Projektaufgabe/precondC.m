function [B] = precondC(c,x)

X = devec(x);
B = applyInvSqrtC(c,X');
B = applyInvSqrtC(c,B');
B = B(:);
end
