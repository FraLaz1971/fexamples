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
			print *,'i =', i,' sum =', sum
10 		continue
        write (*,*) '**************************************************
     &  *********'
        print *,'** The sum of the first', i-1,'numbers is ', sum
        write (*,*) '**************************************************
     &  *********'
        write (*,*) 'End of the program. Bye.'
		stop
	end
