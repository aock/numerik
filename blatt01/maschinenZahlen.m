function Mres = maschinenZahlen(t,g,p)

Mc = dec2bin([(2^(t+1))/2:2^(t+1)-1]);

M = zeros(size(Mc));

for i = 1:size(Mc,1)
	for j=1:size(Mc,2)
		M(i,j) = bin2dec(Mc(i,j));
	end
end

M_len = size(M,1);

p_len = length(p);

Mres = zeros( M_len, p_len );

for i = 1:p_len
	potenz=(p(i):-1:p(i)-3)';
	Mres(:,i) = M*(g.^potenz);
end

end
