C	this program compute a sum of first n integers
C	this program compute a sum of given input integers
	program sumn
		integer i, n, nsum, DEBUG
C   compiled with DEBUG=1 prints intermediate sum
C   compiled with DEBUG=0 prints only final result
		DEBUG=0
		nsum = 0
2       continue		
        write (*,*) 'Please, type a natural number in [1:+INF)'
        read (*,*,ERR=999) n
        if (n.lt.1) then 
            goto 777
        else
            print *, 'computing sum of first numbers in [1,',N,']'
        end if
		do 10 i = 1, n
			nsum = nsum + i
			if (DEBUG.eq.1) print *,'i =', i,'sum =', nsum
10 		continue
        print *, 'the final sum is ', nsum
		stop
C program ends here
C error handling routines section
777     continue
        write (0,*) 'error: out-of-range input value'
        goto 2
        stop
999     continue
        write (0,*) 'error: bad input type'
        goto 2
        stop
	end
