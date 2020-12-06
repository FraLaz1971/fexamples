	program matrix
		real A(3,5)
		integer i,j
c
c We will only use the upper 3 by 3 part of this array.
c
		do 20 j = 1, 3
			do 10 i = 1, 3
				a(i,j) = real(i)/real(j)
10	 		continue
20 		continue

		do 40 j = 1, 3
			do 30 i = 1, 3
				write (*,*) a(i,j) 
30	 		continue
40 		continue

	stop
	end
