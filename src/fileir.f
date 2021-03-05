C this program reads using
C different FORMAT statements
C inspired by section 6.5 of the book
C TMR Ellis, 1982, "A structured approach to FORTRAN 77 programming"
C compile and execute fileo.f to create an input fle '
C to create the input file as in example 6.1 of TMR Ellis, 1982
C compile and run fileoo.f to create the input file
C with the string 1234567890

       PROGRAM fileir
C file input/output examples
        REAL X,A,B,C,D
        INTEGER LABL, IOV
C open a file called MILES-ELLIS.dat and assign
C to it unit number 10
        OPEN(UNIT=10,FILE='MILES-ELLIS.dat',STATUS='OLD',ERR=999)
        ASSIGN 20 TO LABL
        PRINT *,'filei.10: before first read executed'
        READ(UNIT=10,FMT=121,ERR=777,END=888,IOSTAT=IOV) X
        WRITE(*,200) 'filei.10: read ',X
        PRINT *,'filei.10: after first read executed'
20      CONTINUE
        REWIND 10
        PRINT *,'filei.20: before second read executed'
        ASSIGN 30 TO LABL
        READ(UNIT=10,FMT=122,ERR=777,END=888,IOSTAT=IOV) A,B,C,D
        WRITE(*,200) 'filei.20: A = ', A
        WRITE(*,200) 'filei.20: B = ', B
        WRITE(*,202) 'filei.20: C = ', C
        WRITE(*,200) 'filei.20: D = ', D
        WRITE(*,200) 'filei.20: after second read executed'
30      CONTINUE
        PRINT *,'filei.30: program ends correctly '
        CLOSE(UNIT=10)
C handle error in reading from input file
        GOTO 1000
121     FORMAT(F9.4)
122     FORMAT(F3.1,F2.2,F3.5,TL6,F4.0)
200     FORMAT(A,F10.4)
202     FORMAT(A,F10.5)

777     CONTINUE
        PRINT *,'filei.777: Error in reading from file MILES-ELLIS.dat'
        PRINT *,'filei.777: IOSTAT value is', IOV
        IF (IOV .EQ. 5001) THEN
            PRINT *,'filei.777: ERROR: Trying to read past end of file'
        ELSE IF (IOV .EQ. -1) THEN
            PRINT *,'filei.777: END-OF-FILE reached!'
        END IF
        GOTO LABL
888     CONTINUE
        PRINT *,'filei.888: Error in reading from file MILES-ELLIS.dat'
        PRINT *,'filei.888: IOSTAT value is', IOV
        IF (IOV .EQ. -1) THEN
            PRINT *,'filei.888: END-OF-FILE reached!'
            PRINT *,'filei.88: maybe the file has 0 size?'
        END IF
        GOTO LABL
c handle error can't open input file
999     CONTINUE
        PRINT *,'filei.999: Error in opening file MILES-ELLIS.dat'
        PRINT *,'filei.999: maybe the file is not present?'
        PRINT *,'filei.999: compile and execute fileo.f  to create it'
        PRINT *,'filei.999: IOSTAT value is', IOV
1000    CONTINUE
        PRINT *,'filei.1000: for example 6.1 of TMR Ellis, 1982'
        PRINT *,'filei.1000: use fileoo.f to create input file'
        PRINT *,'filei.1000: Exiting. Bye.'
       END
