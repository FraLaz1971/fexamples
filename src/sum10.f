        PROGRAM SUM10
C   THIS PROGRAM READS 10 NUMBERS FROM STDIN 
C   AND PRINTS THEIR SUM
        REAL X(10), RSUM
        INTEGER I,NMAX
        NMAX=10
        PRINT *,'please, enter ',NMAX, ' numbers'
        PRINT *,'press enter after each of them'
        DO 20, I=1, NMAX
            READ *,X(I)
            WRITE (*,*) 'number ',I, ' value ' ,X(I)
20      CONTINUE
        RSUM=0
        DO 30 I=1, NMAX
            RSUM = X(I) + RSUM
30      CONTINUE
        PRINT *,'The sum is ', RSUM
        END
C ./sum10 <data/sum10.dat
