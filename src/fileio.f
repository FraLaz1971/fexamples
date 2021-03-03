        PROGRAM fileio
C file input/output examples
        OPEN(UNIT=9,FILE="MILES-ELLIS.dat")
        WRITE(UNIT=9,FMT=*) 9,8,7,6,5,4,3,2,1
        CLOSE(UNIT=9)
        END
