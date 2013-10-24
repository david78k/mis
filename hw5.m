% Minkowski inequality
x = rand(1, 10)
%x = randn(1, 10)
y = rand(1, 10)
%y = randn(1, 10)
ps = [1, 2, 10, 100, Inf]

for p = ps
	p
	norm(x+y,p)
	norm(x,p) + norm(y,p)
	if (p == Inf)
		max(x) + max (y)
	end
end
