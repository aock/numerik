function [A] = MatrixA(n)
	
	A = ones(n) * (-1);
	A = tril(A);
	A = A + 2 * eye(n);
	A(:,n) = ones(n,1);

end

