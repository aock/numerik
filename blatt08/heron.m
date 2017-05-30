function [X] = heron(v, a, kmax, x0)
% Output X=[x^1...x^kmax]^T
X = x0;
for k=1:kmax
    x0=1/v * ((v-1)*x0 + a/(x0^(v-1)));
    X=[X;x0];
end

end
