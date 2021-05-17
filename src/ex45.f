C from Ellis,1982 adapt. example 4.5 p.59
C program that prints multiplication tables
C from 1 times up to 10 times
        PROGRAM EX45
        INTEGER I, J, K, L, DEBUG
        I = 0
        j = 0
        K = 0
        L = 0
        DEBUG = 0
        DO 10, I=1,10
            DO 10, J=1,I**2
                DO 10, K=J+1,I*10
                    L = I+J+K
                    IF (DEBUG.EQ.1) PRINT *, I,J,K,L
10      CONTINUE
        PRINT *, I,J,K,L
        PRINT *, '* Program Ended.Bye. *'
        END
C
