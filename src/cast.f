        PROGRAM CAST
C VARIABLE DECLARATION
        REAL X,Y,U,W
        INTEGER I,J
C STATEMENT FUNCTIONS
        CEIL(Z) = NINT(Z+0.5)
        RFLOOR(Z) = NINT(Z-0.5)
        I = 100
        J = -30
        X = 3.002
        Y = 7.996
        U = -2.006
        W = -1.98
        WRITE(*,100) ' I = ',I
100     FORMAT (A,I6)
        WRITE(*,200) ' X = ', X
        WRITE(*,200) ' Y = ', Y
        WRITE(*,200) ' U = ', U
        WRITE(*,200) ' W = ', W
200     FORMAT (A,F10.3)
        PRINT *,'INT(X)',INT(X)
        PRINT *,'NINT(X)',NINT(X)
        PRINT *,'INT(Y)',INT(Y)
        PRINT *,'NINT(Y)',NINT(Y)
        PRINT *,'REAL(I)',REAL(I)
        PRINT *,'REAL(J)',REAL(J)
        PRINT *,'INT(U)',INT(U)
        PRINT *,'NINT(U)',NINT(U)
        PRINT *,'INT(W)',INT(W)
        PRINT *,'NINT(W)',NINT(W)        
        PRINT *,'CEIL(X)',NINT(CEIL(X))
        PRINT *,'CEIL(Y)',NINT(CEIL(Y))
        PRINT *,'FLOOR(X)',NINT(RFLOOR(X))
        PRINT *,'FLOOR(Y)',NINT(RFLOOR(Y))
        WRITE(*,200) ' ABS(U)',ABS(U)
        WRITE(*,200) ' ABS(W)',ABS(W)
        PRINT *,'Program Ended. Bye.'
        END
