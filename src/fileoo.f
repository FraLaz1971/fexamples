C write a file containing ascii string 1234567890
C repeated 5 times
C create input file for example 6.1 of the book
C TMR Ellis, 1982, "A structured approach to FORTRAN 77 programming"
        PROGRAM fileoo
C file input/output examples
        INTEGER IVAL(50),I,J
        OPEN(UNIT=9,FILE='MILES-ELLIS.dat')
        DO 10,I=1,5
            DO 5,J=1,10
                IVAL((I-1)*10+J)=MOD(J,10)
5           CONTINUE
10      CONTINUE 
        WRITE(UNIT=9,FMT=101) IVAL
101     FORMAT(50(I1))
        CLOSE(UNIT=9)
        END
