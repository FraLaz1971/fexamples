        PROGRAM TEST23
C   THIS PROGRAM READS DATA FROM FILE test23.dat 
C   AND SHOWS OUTPUT ACCORDINGLY
        INTEGER IERR;
        READ (UNIT=*,FMT=*,ERR=999,IOSTAT=IERR) A,B,C
        READ (UNIT=*,FMT=*,ERR=999,IOSTAT=IERR) P,Q,R
C   A NEW READ STATEMENT MAKE SKIP TO NEW LINE
        READ (UNIT=*,FMT=*,ERR=999,IOSTAT=IERR) X,Y,Z
        READ (UNIT=*,FMT=*,ERR=999,IOSTAT=IERR) A,B,C
        READ (UNIT=*,FMT=*,ERR=999,IOSTAT=IERR) X,Y,Z
        PRINT *,P,Q,R,X,Y,Z,A,B,C
        PRINT *,'P=',P,' Q=',Q,' R=',R
        PRINT *,'X=',X,' Y=',Y,' Z=',Z
        PRINT *,'A=',A,' B=',B,' C=',C
100     FORMAT (A,I6)
C 200     FORMAT (F10.4,F10.4,F10.4)
        STOP
999     PRINT 100,'Found an error, IERR =',IERR
        END

C ./test23 <data/test23.dat 
C A<-1.23 B<-4.56 C<-7
C P<-0.9 Q<-8 R<-76
C X<-1 Y<-2 Z<-345.6
C A<-9.8
C X<-1.23
C             P   Q R   X    Y    Z      A     B     C 
C PRINTS OUT: 0.9 8 76 1.23  2   345.6  9.8   4.56   7

C ./test23 <data/test23bis.dat
C             P   Q R   X   Y    Z    A     B     C 
C PRINTS OUT: 0.9 8 76 9.8  1    2   345.6 4.56   7

C maybe / means go to the next line at following field (if any) if find end-of-line restart from beginning ?
C ./test23 <data/test23bis.dat 
C  0.899999976       8.00000000       76.0000000       9.80000019       1.00000000       2.00000000       345.600006       4.55999994       7.00000000    
C P=  0.899999976      Q=   8.00000000      R=   76.0000000    
C X=   9.80000019      Y=   1.00000000      Z=   2.00000000    
C A=   345.600006      B=   4.55999994      C=   7.00000000    
C err
C 0.899999976       8.00000000       76.0000000       1.23000002       2.00000000       345.600006       9.80000019       4.55999994       7.00000000    
