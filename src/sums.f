C	this program compute a sum of given input integers
	program sums
		integer i, n, sum
		sum = 0
        write (*,*) '*****************************'
        write (*,*) '** summing first n numbers **'
        write (*,*) '*****************************'
        write (*,*) 'Please, type an integer in [1:+INF)'
        read (*,*) n
		do 10 i = 1, n
			sum = sum + i
			write(*,*) 'i =', i
			write(*,*) 'sum =', sum
10 		continue
		stop
	end
