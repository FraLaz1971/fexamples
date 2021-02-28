CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C author: fralaz1971  
C based on the examples at page 100 of the book: Ellis, 1982,
C "A structured approach to FORTRAN 77 programming"
C progam format.f  
C shows usage of integers input output from/to stdin/stdout
C using subroutines calls
C and error handling examples
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C subroutines section
	SUBROUTINE READ1(MI,IV)
        INTEGER MI,IV
		PRINT *, 'READ1(): enter one integer number'
        READ (5,1101,ERR=9999,IOSTAT=IV) MI
        GOTO 10000
1101	FORMAT (I9)
9999	WRITE (0,*) 'READ1(): input format error.'
		WRITE (0,*) 'READ1(): ErrorCode =',IV
10000    CONTINUE
	END
C
	SUBROUTINE READ2(MI,IV)
        INTEGER MI,IV
		PRINT *, 'READ2(): enter one integer number'
        READ (*,2101,ERR=9999,IOSTAT=IV) MI
        GOTO 10000
2101		FORMAT (I6)
9999	WRITE (0,*) 'READ2(): input format error.'
		WRITE (0,*) 'READ2(): ErrorCode =',IV
10000    CONTINUE
	END
C
	SUBROUTINE READ3(MI,IV)
        INTEGER MI,IV
		PRINT *, 'READ3(): enter one integer number'
        READ (UNIT=*,FMT=3101,ERR=9999,IOSTAT=IV) MI
        GOTO 10000
3101		FORMAT (I4)
9999	WRITE (0,*) 'READ3(): input format error.'
		WRITE (0,*) 'READ3(): ErrorCode =',IV
10000    CONTINUE
	END
C
	SUBROUTINE READ4(MI,IV)
        INTEGER MI,IV
		PRINT *, 'READ4(): enter one integer number'
        READ (FMT=4101,UNIT=5,ERR=9999,IOSTAT=IV) MI
        GOTO 10000
4101		FORMAT (I)
9999	WRITE (0,*) 'READ4(): input format error.'
		WRITE (0,*) 'READ4(): ErrorCode =',IV
10000    CONTINUE
	END
C
	SUBROUTINE MYWRITE(MI,IV)
        INTEGER MI,IV
        WRITE (*,9201,ERR=9999,IOSTAT=IV) 'MYWRITE(): You entered ',MI
        GOTO 10000
9101		FORMAT (I9)
9201		FORMAT (A,I9)
9999	WRITE (0,*) 'MYWRITE(): output format error.'
		WRITE (0,*) 'MYWRITE(): ErrorCode =',IV
10000    CONTINUE
	END
C end of the subroutines section

C MAIN PROGRAM STARTS HERE
	PROGRAM format1
C Showing FORMAT statement usage
        INTEGER IV,WHERE
C       SET A DEFAULT VALUE TO N
        N=-1
        ASSIGN 500 TO WHERE
		PRINT *, 'enter one integer number'
		READ (*,101,ERR=999,IOSTAT=IV) N
		WRITE (*,201) 'You entered ',N
C
		CALL MYWRITE(N,IV)
C
500     CONTINUE
C       SET A DEFAULT VALUE TO N
        N=-1
        ASSIGN 505 TO WHERE
		CALL READ1(N,IV)
		CALL MYWRITE(N,IV)
C
505     CONTINUE
C       SET A DEFAULT VALUE TO N
        N=-1
        ASSIGN 510 TO WHERE
		CALL READ2(N,IV)
		CALL MYWRITE(N,IV)
C
510     CONTINUE
C       SET A DEFAULT VALUE TO N
        N=-1
        ASSIGN 515 TO WHERE
        CALL READ3(N,IV)
		CALL MYWRITE(N,IV)
C
515     CONTINUE
C       SET A DEFAULT VALUE TO N
        N=-1
		CALL READ4(N,IV)
		CALL MYWRITE(N,IV)
C
777     CONTINUE
        PRINT *,''
		PRINT *, 'Program ''format.f'' ended. Bye.'
		STOP
101		FORMAT (I9)
201		FORMAT (A,I9)
999		CONTINUE
		PRINT *, '999: N = ',N
        WRITE (0,*) '999: input format error.'
		WRITE (0,*) '999: ErrorCode =',IV
C       EXIT THE PROGRAM
		GOTO WHERE
	END
