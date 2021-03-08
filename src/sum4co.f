        PROGRAM SUM4CO
C   THIS PROGRAM READS 10 NUMBERS FROM STDIN 
C   AND PRINTS THEIR SUM
        REAL X(4), RSUM1,RSUM2

        PRINT *,'****************************************'
        PRINT *,'please, enter 2 couples of numbers'
        PRINT *,'I will calculate the sum of each couple'

        PRINT *,'****************************************'
        PRINT *,'please, enter 1st couple of numbers'
        READ *,X(1),X(2)
        PRINT *,'****************************************'
        PRINT *,'please, enter 2nd couple of numbers'
        READ *,X(3),X(4)
        PRINT *,'****************************************'
             
        RSUM1 = X(1) + X(2)
        RSUM2 = X(3) + X(4)
        
        PRINT *,'The sum of first  2 is', RSUM1
        PRINT *,'The sum of second 2 is', RSUM2

        END
C ./sum4co <data/sum4co.dat
