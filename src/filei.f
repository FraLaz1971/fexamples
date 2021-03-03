        PROGRAM fileio
C file input/output examples
        INTEGER I1,I2,I3,I4,I5,I6,I7,I8,I9
        OPEN(UNIT=10,FILE="MILES-ELLIS.dat")
        READ(UNIT=10,FMT=101) I1,I2,I3,I4,I5,I6,I7,I8,I9
        WRITE(UNIT=*,FMT=101) I1,I2,I3,I4,I5,I6,I7,I8,I9
101     FORMAT(I1,I1,I1,I1,I1,I1,I1,I1,I1)
        CLOSE(UNIT=10)
        END
