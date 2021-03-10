C from Ellis,1982-example 3.2
C THIS PROGRAM CALCULATES EXPRESSIONS
C OF EXERCISE 3.1
        PROGRAM MAXLOG
        REAL V1,V2,L1,L2
        V1=10
        V2=20
        L1=9
        L2=25
        PRINT *,'MAX OF',V1,V2
        PRINT *,'IS ',MAX(V1,V2)
        PRINT *,'LOG OF',L1
        PRINT *,'IS ',LOG(L1)        
        PRINT *,'LOG OF',L2
        PRINT *,'IS ',LOG(L2)        
        END
C ./pay <data/pay.dat
