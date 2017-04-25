v = 100:100:1500;
n = length(v);

tSpek = ones(n,1) * inf;
tFrob = ones(n,1) * inf;
tZeilen = ones(n,1) * inf;
tSpalten = ones(n,1) * inf;

for k=1:n
	A = randn( v(k) );
	
	%spektralnorm ||A||_1
	tic
		norm(A,2);
	tSpek(k,1) = toc;
	
	%spaltensummennorm ||A||_2	
	tic
		norm(A,1);
	tSpalten(k,1) = toc;


	%frobenius
	tic
		norm(A, 'fro' );
	tFrob(k,1) = toc;
	
	%zeilensummennorm
	tic
		norm(A, inf );
	tZeilen(k,1) = toc;
end


T=[tSpalten,tSpek,tFrob,tZeilen];

loglog(v,T.','x-');
title('Laufzeiten')
xlabel('n')
legend('||A||_1','||A||_2','||A||_F','||A||_{\infty}')
