C this program attempt 3 reads using
C different FORMAT statements
C inspired by section 6.5 of the book
C TMR Ellis, 1982, "A structured approach to FORTRAN 77 programming"
C compile and execute fileo.f to create an input fle '
C to create the input file as in example 6.2 of TMR Ellis, 1982
C compile and run fileoo.f to create the input file
       PROGRAM fileio
C file input/output examples
        INTEGER V1,V2,V3,V4,V5,V6,V7,V8,V9
        INTEGER I,J,K
        INTEGER WHERE, IOV
C open a file called MILES-ELLIS.dat and assign
C to it unit number 10
        OPEN(UNIT=10,FILE='MILES-ELLIS.dat',STATUS='OLD',ERR=999)
        ASSIGN 20 TO WHERE
        PRINT *,'filei.10: before first read executed'
        READ(UNIT=10,FMT=102,ERR=777,END=888,IOSTAT=IOV) 
     &   V1,V2,V3,V4,V5,V6,V7,V8,V9
        PRINT *,'filei.10: read ',
     &   V1,V2,V3,V4,V5,V6,V7,V8,V9
        PRINT *,'filei.10: after first read executed'
20      CONTINUE
        REWIND 10
        PRINT *,'filei.20: before second read executed'
        ASSIGN 30 TO WHERE
        READ(UNIT=10,FMT=103,ERR=777,END=888,IOSTAT=IOV) V1
        PRINT *,'filei.20: read ', V1
        PRINT *,'filei.20: after second read executed'
30      CONTINUE
        REWIND 10
        ASSIGN 40 TO WHERE
        PRINT *,'filei.30: before third read executed'
        READ(UNIT=10,FMT=104,ERR=777,END=888,IOSTAT=IOV) V1,V2
        PRINT *,'filei.30: read ', V1,V2
        PRINT *,'filei.30: after third read executed'
40      CONTINUE
        REWIND 10
        ASSIGN 50 TO WHERE
       PRINT *,'filei.40: before fourth read executed'
        READ(UNIT=10,FMT=105,ERR=777,END=888,IOSTAT=IOV) I,J,K
        PRINT *,'filei.40: read ', I,J,K
       PRINT *,'filei.40: after fourth read executed'
50      CONTINUE
        REWIND 10
        ASSIGN 60 TO WHERE
        PRINT *,'filei.50: before fifth read executed'
C if string 123456789 is in input file
C expect to read
C 110     FORMAT(T5,I4,21X,I3,TL7,I2,TR13,I3,TL45,TR7,I5,TL5,I5)
        READ(UNIT=10,FMT=110,ERR=777,END=888,IOSTAT=IOV) I,J,K,L,M,N
        PRINT *,'filei.50: after fifth read executed'
        PRINT *,'filei.50: I = ',I 
        PRINT *,'filei.50: J = ',J 
        PRINT *,'filei.50: K = ',K 
        PRINT *,'filei.50: L = ',L 
        PRINT *,'filei.50: M = ',M 
        PRINT *,'filei.50: N = ',N 
60      CONTINUE
        PRINT *,'filei.50: program ends correctly '
        CLOSE(UNIT=10)
C handle error in reading from input file
        GOTO 1000
102     FORMAT(I1,I1,I1,I1,I1,I1,I1,I1,I1)
103     FORMAT(4X,I5)
104     FORMAT(I2,3X,I3)
105     FORMAT(T4,I2,T8,I2,T2,I4)
110     FORMAT(T5,I4,21X,I3,TL7,I2,TR13,I3,TL45,TR7,I5,TL5,I5)
777     CONTINUE
        PRINT *,'filei.777: Error in reading from file MILES-ELLIS.dat'
        PRINT *,'filei.777: IOSTAT value is', IOV
        IF (IOV .EQ. 5001) THEN
            PRINT *,'filei.777: ERROR: Trying to read past end of file'
        ELSE IF (IOV .EQ. -1) THEN
            PRINT *,'filei.777: END-OF-FILE reached!'
        END IF
        GOTO WHERE
888     CONTINUE
        PRINT *,'filei.888: Error in reading from file MILES-ELLIS.dat'
        PRINT *,'filei.888: IOSTAT value is', IOV
        IF (IOV .EQ. -1) THEN
            PRINT *,'filei.888: END-OF-FILE reached!'
            PRINT *,'filei.88: maybe the file has 0 size?'
        END IF
        GOTO WHERE
c handle error can't open input file
999     CONTINUE
        PRINT *,'filei.999: Error in opening file MILES-ELLIS.dat'
        PRINT *,'filei.999: maybe the file is not present?'
        PRINT *,'filei.999: compile and execute fileo.f  to create it'
        PRINT *,'filei.999: IOSTAT value is', IOV
1000    CONTINUE
        PRINT *,'filei.1000: for example 6.2 of TMR Ellis, 1982'
        PRINT *,'filei.1000: use fileoo.f to create input file'
        PRINT *,'filei.1000: Exiting. Bye.'
       END
