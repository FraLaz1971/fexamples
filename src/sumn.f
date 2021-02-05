C	this program compute a sum of given input integers
	program sumn
		integer i, n, sum
		sum = 0
                write (*,*) 'Please, type n. of iterations:'
                read (*,*) n
		do 10 i = 1, n
			sum = sum + i
			write(*,*) 'i =', i
			write(*,*) 'sum =', sum
10 		continue
		stop
	end
