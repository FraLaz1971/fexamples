C this program attempt 3 reads using
C different FORMAT statements
        PROGRAM fileio
C file input/output examples
        INTEGER V1,V2,V3,V4,V5,V6,V7,V8,V9
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
        PRINT *,'filei.10: read ', V1
        PRINT *,'filei.20: after second read executed'
30      CONTINUE
        REWIND 10
        ASSIGN 40 TO WHERE
        PRINT *,'filei.30: before third read executed'
        READ(UNIT=10,FMT=104,ERR=777,END=888,IOSTAT=IOV) V1,V2
        PRINT *,'filei.10: read ', V1,V2
        PRINT *,'filei.30: after third read executed'
        PRINT *,'filei.30: program correctly terminated'
40      CONTINUE
102     FORMAT(I1,I1,I1,I1,I1,I1,I1,I1,I1)
103     FORMAT(4X,I5)
104     FORMAT(I2,3X,I3)
        CLOSE(UNIT=10)
c handle error in reading from input file
        GOTO 1000
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
        PRINT *,'filei.999: compile and execute fileo.f to create it'
        PRINT *,'filei.999: IOSTAT value is', IOV
1000    CONTINUE
        PRINT *,'filei.1000: Exiting. Bye.'
       END
