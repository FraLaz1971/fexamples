C	this program compute a sum of given input integers
	program sums
		integer i, n, sum
		sum = 0
C present program on beginning output screen
        write (*,*) '*****************************'
        write (*,*) '** summing first n numbers **'
        write (*,*) '*****************************'
C prompt input request to user
        write (*,*) 'Please, type an integer in [1:+INF)'
        read (*,*) n
C do iteration loop on i from 1 to n
C of code included between 10 and 10 labels
		do 10 i = 1, n
			sum = sum + i
			print *,'i =', i,' sum =', sum
10 		continue
C print result on final output screen
        write (*,*) '**************************************************
     &  *********'
        print *,'** The sum of the first', i-1,'numbers is ', sum
        write (*,*) '**************************************************
     &  *********'
        write (*,*) 'End of the program. Bye.'
		stop
	end
