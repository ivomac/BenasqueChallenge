

ind = [...
	1   2  ; ...
	1   5  ; ...
	1   20 ; ...
	2   12 ; ...
	2   1  ; ...
	2   3  ; ...
	3   2  ; ...
	3   4  ; ...
	3   10 ; ...
	4   3  ; ...
	4   5  ; ...
	4   8  ; ...
	5   6  ; ...
	5   1  ; ...
	5   4  ; ...
	6   7  ; ...
	6   5  ; ...
	6   19 ; ...
	7   8  ; ...
	7   6  ; ...
	7   17 ; ...
	8   9  ; ...
	8   7  ; ...
	8   4  ; ...
	9   10 ; ...
	9   8  ; ...
	9   16 ; ...
	10  11 ; ...
	10  9  ; ...
	10  3  ; ...
	11  12 ; ...
	11  10 ; ...
	11  15 ; ...
	12  13 ; ...
	12  11 ; ...
	12  2  ; ...
	13  14 ; ...
	13  12 ; ...
	13  20 ; ...
	14  15 ; ...
	14  13 ; ...
	14  18 ; ...
	15  16 ; ...
	15  14 ; ...
	15  11 ; ...
	16  17 ; ...
	16  15 ; ...
	16  9  ; ...
	17  18 ; ...
	17  16 ; ...
	17  7  ; ...
	18  19 ; ...
	18  17 ; ...
	18  14 ; ...
	19  20 ; ...
	19  18 ; ...
	19  6  ; ...
	20  1  ; ...
	20  19 ; ...
	20  13 ...
];

A = zeros(20,20);
for n = 1:size(ind,1)
	A(ind(n,1),ind(n,2)) = 1;
end

n = 0;
m = 0;
for b = 1:19
	for a = (b+1):20
		n=n+1;
		v = zeros(20,1);
		v(a) = 1; v(b) = 1;
		v=A*v;
		if v(a) > 0 || v(b) > 0
			m=m+1;
		end
	end
end
n-m

