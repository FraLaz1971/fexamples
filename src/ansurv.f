C ansurv.f F77 program to analyse bio-statistics
C dataset as simple example of data science
C subroutine section
C NPE tot n. of people
C NG  tot n. of girls with age in [21:35]
C HG  avg height of girls
C NTG tot n. of tall (height>1.7m) girls with age in [21:35]
C WTG avg weight of tall girls

        SUBROUTINE SHOWRES(NPE, NG, HG, NTG, WTG)
            INTEGER NPE, NG, NTG
            REAL HG, WTG
            PRINT *,'showres.0: subroutine start'
            PRINT *,'********************************************'
            PRINT *,'** showing results on bio-statistics dataset'
            PRINT *,'********************************************'
            PRINT *,'** girls = women with age in [21:35]'
            PRINT *,'** tall girls = girls with height > 1.7m'
            PRINT *,'********************************************'
            PRINT *,'** tot n. of people:           ',NPE
            PRINT *,'** tot n. of girls:            ',NG
            WRITE(*,300) ' ** avg height of girls (m):       ',HG/100
            PRINT *,'** n. of tall girls:           ',NTG
            WRITE(*,400) ' ** avg weight of tall girls (kg): ',WTG
            PRINT *,'********************************************'
            PRINT *,'showres.0: subroutine end'
300         FORMAT(A,F10.2)
400         FORMAT(A,F10.3)
        END
C main program
        PROGRAM ANSURV
C AHG average height of girls
        REAL AHG
C AWTG average weight of tall girls
        REAL AWTG
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
        INTEGER MNPE, MNG, MNTG, HS
        REAL MHG, MWTG, WS
C
C       set 1000 as max. n. of records to process
        DATA RMAX/1000/
        DATA RSKIP/2/
C HS is the sum of heights of girls
C WS is the sum of weights of tall girls
        ASSIGN 10 TO LABL
C END OF DATASET ---> 9 in column 23
C reads from a file with unit 10 named SUREAin.dat
        PRINT *,'ansurv.0: before opening file'
        OPEN(UNIT=10,FILE='SURVEYin.dat',ERR=999, STATUS='OLD')
        PRINT *,'ansurv.0: after opening file'
C skip intestation rows
        DO 10,RCOUNT=1,RSKIP
            READ(UNIT=10,FMT=*,ERR=777,IOSTAT=IOV) ROW
        PRINT *,'ansurv.0: skypped row: ', RCOUNT,ROW
10      CONTINUE
        ASSIGN 20 TO LABL
        MNG = 0
        MNTG = 0
        HS = 0
        WS = 0
        AHG = 0
        AWTG = 0
        PRINT *,'ansurv.10: before reading loop'
C 20 do an all records
        DO 20,RCOUNT=1,RMAX
          WRITE(*,*) 'ansurv.10: before reading record',RCOUNT
          READ(UNIT=10,FMT=110,ERR=777,END=888,IOSTAT=IOV)
     &    NAME,SEX,AGE,HEIGHT,WEIGHT  
          IF (SEX.EQ.9) THEN 
              WRITE(*,*) 'ansurv.10:last-record:',RCOUNT,' ',SEX
              GOTO 1000
          END IF
          WRITE(*,*) 'ansurv.10: WEIGHT=',WEIGHT
          IF ((SEX.EQ.1).AND.((AGE.GE.21).OR.(AGE.LE.35))) THEN
                WRITE(*,*) 'ansurv.10: ',NAME,'girl height',HEIGHT
                MNG = MNG + 1
                HS = HS + HEIGHT
                WRITE(*,*) 'ansurv.10: MNG=',MNG
                WRITE(*,*) 'ansurv.10: SUM OF girl HEIGHTS=',HS
                IF (HEIGHT.GT.170) THEN
                  WRITE(*,*) 'ansurv.10: ',NAME,'is a tall girl'
                  MNTG = MNTG + 1
                  WS = WS + WEIGHT
                  WRITE(*,*) 'ansurv.10:sumodWGHT of tall girls =',HS
                END IF
          END IF
          WRITE(UNIT=*,FMT=110,ERR=777,IOSTAT=IOV)
     &    NAME,SEX,AGE,HEIGHT,WEIGHT  
          WRITE(*,*) 'ansurv.10: after read record',RCOUNT
20     CONTINUE
        GOTO 1000
110     FORMAT(A20,2X,I1,3X,I2,2X,I3,2X,F5.2)
200     FORMAT(A,F10.4)

777     CONTINUE
        PRINT *,'ansurv.777: Error in accessing file SURVEYin.dat'
        PRINT *,'ansurv.777: IOSTAT value is', IOV
        IF (IOV .EQ. 5001) THEN
            PRINT *,'ansurv.777: ERROR: past end of file'
            GOTO 1000
        ELSE IF (IOV .EQ. -1) THEN
            PRINT *,'ansurv.777: END-OF-FILE reached!'
            GOTO 1000
        END IF
        GOTO LABL
888     CONTINUE
        PRINT *,'ansurv.888: Error in reading from file SURVEY.dat'
        PRINT *,'ansurv.888: IOSTAT value is', IOV
        IF (IOV .EQ. -1) THEN
            PRINT *,'ansurv.888: END-OF-FILE reached!'
            GOTO 1000
        END IF
        GOTO LABL
c handle error can't open input file
999     CONTINUE
        PRINT *,'ansurv.999: Error in opening file'
        PRINT *,'ansurv.999: maybe the path is wrong?'
        PRINT *,'ansurv.999: or the disk is full?'
        PRINT *,'ansurv.999: IOSTAT value is', IOV
1000    CONTINUE
        AHG = HS/MNG
        AWTG = WS/MNTG
        WRITE(*,*) 'ansurv.1000: to avg OF girls HEIGHTS=',AHG
        WRITE(*,*) 'ansurv.1000: to avg OF tall girls WEIGHTS=',AWTG
        PRINT *,'ansurv.1000: after reading loop'
        PRINT *,'ansurv.1000: example 6.2 of TmrEllis,1982'
        PRINT *,'ansurv.1000: Exiting. Bye.'
        WRITE(*,*) 'ansurv.10: AVG HEIGHT OF girls=',HS/MNG
        CALL SHOWRES(RCOUNT, MNG, AHG, MNTG, AWTG)
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
C C C C C C C C C C C C C C C C C C C C C C C
C
C algorithm as of tmrEllis1982 Ex. 6.2
C 1 Initialise variables
C 2 Repeat the following up to 100 times
C   2.1 Read sex,age,height and weight
C   2.2 If sex code is 9 then Exit
C   2.3 If female and between 21 and 35 then
C       2.3.1 Add height to sum of heights
C       2.3.2 Add 1 to sum of people
C       2.3.3 If height is more than 1.7
C             2.3.3.1 Add weight to sum of weights
C             2.3.3.1 Add 1 to sum of tall people
C 3 Calculate and print averages
C
