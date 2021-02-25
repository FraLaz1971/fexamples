        PROGRAM TEST23
C   THIS PROGRAM READS DATA FROM FILE test23.dat 
C   AND SHOWS OUTPUT ACCORDINGLY
        READ *,A,B,C
        READ *,P,Q,R
        READ *,X,Y,Z
        READ *,A,B,C
        READ *,X,Y,Z
        PRINT *,P,Q,R,X,Y,Z,A,B,C
        PRINT *,'P=',P,' Q=',Q,' R=',R
        PRINT *,'X=',X,' Y=',Y,' Z=',Z
        PRINT *,'A=',A,' B=',B,' C=',C
        END
C ./test23 <data/test23bis.dat
C             P   Q R   X   Y    Z    A     B     C 
C PRINTS OUT: 0.9 8 76 9.8 1     2   345.6 4.56   7

C maybe / means go to the next line at following field (if any) if find end-of-line restart from beginning ?
C ./test23 <data/test23bis.dat 
C  0.899999976       8.00000000       76.0000000       9.80000019       1.00000000       2.00000000       345.600006       4.55999994       7.00000000    
C P=  0.899999976      Q=   8.00000000      R=   76.0000000    
C X=   9.80000019      Y=   1.00000000      Z=   2.00000000    
C A=   345.600006      B=   4.55999994      C=   7.00000000    
