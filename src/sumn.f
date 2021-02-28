C	this program compute a sum of first n integers
C	this program compute a sum of given input integers
	program sumn
		integer i, n, nsum, IV,DEBUG
C   compiled with DEBUG=1 prints intermediate sum
C   compiled with DEBUG=0 prints only final result
		DEBUG=1
		nsum = 0
C input variable default value
		n = -1
2       continue		
        write (*,*) 'Please, type a natural number in [1:+INF)'
        read (*,*,ERR=999,IOSTAT=IV) n
C check possible error
C ErrorCode = 5010  LIBERROR_READ_VALUE
C ErrorCode = 5001  LIBERROR_OPTION_CONFLICT
        if (n.lt.1) then 
            goto 777
        else
            if (DEBUG.eq.1) print *, 'ErrorCode = ',IV
            print *, 'computing sum of first ',N,'numbers'
        end if
C iterate for i that goes from 1 to n
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
        print *, 'ErrorCode = ',IV
        goto 2
        stop
999     continue
        write (0,*) 'error: bad input type. Exiting'
        write (0,*) 'ErrorCode = ',IV
        stop
	end

C Gfortran/F77 Error Codes

C When using READ in fortran error codes can returned in the value IOSTAT. These values are

C -3    LIBERROR_FIRST = -3,
C -2    LIBERROR_EOR = -2,
C -1    LIBERROR_END = -1,
C 0     LIBERROR_OK = 0, 
C 5000  LIBERROR_OS = 5000, 
C 5001  LIBERROR_OPTION_CONFLICT
C 5002  LIBERROR_BAD_OPTION
C 5003  LIBERROR_MISSING_OPTION
C 5004  LIBERROR_ALREADY_OPEN
C 5005  LIBERROR_BAD_UNIT
C 5006  LIBERROR_FORMAT
C 5007  LIBERROR_BAD_ACTION
C 5008  LIBERROR_ENDFILE
C 5009  LIBERROR_BAD_US
C 5010  LIBERROR_READ_VALUE
C 5011  LIBERROR_READ_OVERFLOW
C 5012  LIBERROR_INTERNAL
C 5013  LIBERROR_INTERNAL_UNIT
C 5014  LIBERROR_ALLOCATION
C 5015  LIBERROR_DIRECT_EOR
C 5016  LIBERROR_SHORT_RECORD
C 5017  LIBERROR_CORRUPT_FILE
C 5018  LIBERROR_INQUIRE_INTERNAL_UNIT
C 
C as defined in gcc/fortran/libgfortran.h. (These values are from gfortran 4.6)
