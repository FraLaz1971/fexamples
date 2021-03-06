C ansurv.f F77 program to analyse bio-statistics
C dataset as simple example of data science
        PROGRAM ANSURV
C file input/output examples
        REAL X
        INTEGER LABL, IOV
C string var to read a whole line
        CHARACTER*80 ROW
C RCOUNT is the counter on records
        INTEGER RCOUNT 
C RSKIP is the number of rows to skip
        INTEGER RSKIP
C RMAX is the maximum n. of records to process
        INTEGER RMAX
C Name          columns 1-20
        CHARACTER*20 NAME
C Sex           column  23     (0=male, 1=female)
        INTEGER SEX
C Age (yr)      columns 27,28
        INTEGER AGE
C Height (cm)   columns 31-33
        INTEGER HEIGHT
C Weight (kg)   columns 36-41  (nnn.dd)
        REAL WEIGHT
C       set 1000 as max. n. of records to process
        DATA RMAX/1000/
        ASSIGN 10 TO LABL
C END OF DATASET ---> 9 in column 23
C reads from a file with unit 10 named SUREAin.dat
        PRINT *,'ansurv.0: before opening file'
        OPEN(UNIT=10,FILE='SURVEYin.dat',ERR=999, STATUS='OLD')
        PRINT *,'ansurv.0: after opening file'
C assign a male record as example
C skip intestation rows
        DO 10,RCOUNT=1,(RSKIP)
            READ(UNIT=10,FMT=*,ERR=777,IOSTAT=IOV) ROW
        PRINT *,'ansurv.0: skypped row: ', RCOUNT,ROW
10      CONTINUE
        ASSIGN 20 TO LABL

        PRINT *,'ansurv.10: before reading loop'
        DO 20,RCOUNT=1,RMAX
            WRITE(*,*) 'ansurv.10: before reading record',RCOUNT
            READ(UNIT=10,FMT=110,ERR=777,IOSTAT=IOV)
     &      NAME,SEX,AGE,HEIGHT,WEIGHT  
            WRITE(UNIT=*,FMT=110,ERR=777,IOSTAT=IOV)
     &      NAME,SEX,AGE,HEIGHT,WEIGHT  
            WRITE(*,*) 'ansurv.10: after read record',RCOUNT
            IF (SEX.EQ.9) THEN 
                GOTO 1000
            END IF
20     CONTINUE
        PRINT *,'ansurv.20: after reading loop'
        GOTO 1000
110     FORMAT(A20,2X,I1,3X,I2,2X,I3,2X,F5.2)
200     FORMAT(A,F10.4)

777     CONTINUE
        PRINT *,'ansurv.777: Error in accessing file SURVEYin.dat'
        PRINT *,'ansurv.777: IOSTAT value is', IOV
        IF (IOV .EQ. 5001) THEN
            PRINT *,'ansurv.777: ERROR: past end of file'
            STOP
        ELSE IF (IOV .EQ. -1) THEN
            PRINT *,'ansurv.777: END-OF-FILE reached!'
        END IF
        GOTO LABL
888     CONTINUE
        PRINT *,'ansurv.888: Error in reading from file SURVEY.dat'
        PRINT *,'ansurv.888: IOSTAT value is', IOV
        IF (IOV .EQ. -1) THEN
            PRINT *,'ansurv.888: END-OF-FILE reached!'
        END IF
        GOTO LABL
c handle error can't open input file
999     CONTINUE
        PRINT *,'ansurv.999: Error in opening file'
        PRINT *,'ansurv.999: maybe the path is wrong?'
        PRINT *,'ansurv.999: or the disk is full?'
        PRINT *,'ansurv.999: IOSTAT value is', IOV
1000    CONTINUE
        PRINT *,'ansurv.1000: example 6.2 of TmrEllis,1982'
        PRINT *,'ansurv.1000: Exiting. Bye.'
C PROGRAM TERMINATION
        END

C dataset 
C survey of max N (10000 as default)
C dataset (file SURVEY.dat) containing info about people
C Name          columns 1-20
C Sex           column  23     (0=male, 1=female)
C Age (yr)      columns 27,28
C Height (cm)   columns 31-33
C Weight (kg)   columns 36-41  (nnn.dd)
C END OF DATASET ---> 9 in column 23
C few lines of the sample  data set
C #Name                Sex Age Height Weight
C #                        (yr) (cm)  (kg)
C Alex Morgan           0   41  187  77.11
C Bert Dixon            0   42  172  75.30
C ...
C ...
C Jenna Wells           0   71  172  79.83
C XXX     YYY           9    0    0   0.01
