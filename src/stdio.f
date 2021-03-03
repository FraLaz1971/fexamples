C FORTRAN 77 example on stdin / stdout / stderr usage
C by fralaz1971 , for more info: 
      PROGRAM MAIN
        INTEGER NUMBER
        WRITE(UNIT=0,FMT='(A)') '**********************************' 
        WRITE(UNIT=0,FMT='(A)') '** program stdio.f' 
        WRITE(UNIT=0,FMT='(A)') '** shows usage of stdin/stdout i/o' 
        WRITE(UNIT=0,FMT='(A)') '**********************************' 
10      CONTINUE
        WRITE(UNIT=0,FMT='(A)') 'Please type an integer number in 
     &[-499999:499999]'
        READ(UNIT=5,FMT=*,ERR=999) NUMBER
        IF ( NUMBER.LT.-499998 .OR. NUMBER.GT.499999 ) THEN 
C PROMPT FOR NEW INPUT UNTIL IT IS NOT IN RANGE
            WRITE(UNIT=0,FMT='(A)') 'MAIN.error: out-of-range input' 
            GOTO 10
        ELSE
        WRITE(UNIT=0,FMT='(A,I6,A,I6)') 'The double of ',NUMBER,
     &' is ', 2*NUMBER
        WRITE(UNIT=6,FMT='(I6)')  2*NUMBER
         END IF
C GO TO REGULAR PROGRAM END
        GOTO 10000
C HANDLE WRONG INPUT TYPE
999     WRITE(UNIT=0,FMT='(A)') 'MAIN.error: bad numeric type input' 
        GOTO 10
C PROGRAM END
10000   STOP
        WRITE(UNIT=0,FMT='(A)') 'Bye.' 
      END
