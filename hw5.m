% Minkowski inequality
x = rand(1, 10);
%x = randn(1, 10)
y = rand(1, 10);
%y = randn(1, 10)
ps = [1, 2, 10, 100, Inf];

%format short
format compact
x
y
ps

for p = ps
	norm_sum = norm(x+y,p);
	norm_pq = norm(x,p) + norm(y,p);
	comp = '<=';
	if (norm_sum > norm_pq)
		comp = '>';		
	end

	fprintf('p = %d: ||x + y|| = %f %s ||x| + ||y|| = %f\n', p, norm_sum, comp, norm_pq)	
%	if (p == Inf)
%		max(x) + max (y)
%	end
end
