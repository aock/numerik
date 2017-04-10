l = 0;
r = 1;
m = 0.5;

while(m~=l && m~=r)
	if (1+m) > 1
		r = m;
	else
		l = m;
	end
	m = (r+l)/2;
end

fprintf('\nepsilon=%e\n',r);
fprintf('\n(1+epsilon)-1=%e\n\n',(1+r)-1);
