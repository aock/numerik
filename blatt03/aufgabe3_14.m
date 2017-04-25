cA=[];
cL=[];
cR=[];

n = 64;

for i=1:n
	A=MatrixA(i);
	cA = [cA; cond(A,2)];
	[L,R] = myLRdecomp(A);
	cL = [cL; cond(L,2)];
	cR = [cR; cond(R,2)];
end


%% print graph %%
x_space = linspace(1,n,n);
semilogy(x_space, cA, 'rx', x_space, x_space.^2, 'r',...
		x_space, cL, 'gx', x_space, sqrt(x_space).*2.^(x_space-2), 'g',...
		x_space, cR, 'bx', x_space ,2.^(x_space-1), 'b');
legend('cond2(A)','~ cond2(A)','cond2(L)','~ cond2(L)','cond2(R)','~ cond2(R)','Location','NorthWest')
axis([1, 64, 1, 10^20])
