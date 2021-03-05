C inspired by section 6.5 of the book
C TMR Ellis, 1982, 'A structured approach to FORTRAN 77 programming'
C create an input file serving as input 
C of the survey example 6.2 of TMR Ellis, 1982

       PROGRAM survrec
C file input/output examples
        REAL X
        INTEGER LABL, IOV
C RCOUNT is the counter on records
        INTEGER RCOUNT 
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
C END OF DATASET ---> 9 in column 23
C saves dataset to a file called SURVEY.dat
C opened on unit number 9
        OPEN(UNIT=9,FILE='SURVEY.dat',ERR=999)
        PRINT *,'filei.10: before writing executed', COUNT
C assign a male record as example
30      CONTINUE
        ASSIGN 40 TO LABL
        NAME='Alessio Pennole'
        SEX=0
        AGE=22
        HEIGHT=155
        WEIGHT=68.0
        WRITE(UNIT=9,FMT=110,ERR=777,IOSTAT=IOV) NAME,SEX,AGE,
     &  HEIGHT,WEIGHT  
C assign a female record as 2nd example
40      CONTINUE
        ASSIGN 50 TO LABL
        NAME='Karlina Aprikova'
        SEX=1
        AGE=35
        HEIGHT=152
        WEIGHT=54.5
        WRITE(UNIT=9,FMT=110,ERR=777,IOSTAT=IOV) NAME,SEX,AGE,
     &  HEIGHT,WEIGHT  
C assign a end-of-dataset record.
50      CONTINUE
        ASSIGN 60 TO LABL
        NAME='XXX YYYY'
        SEX=9
        AGE=0
        HEIGHT=0
        WEIGHT=0.01
        WRITE(UNIT=9,FMT=110,ERR=777,IOSTAT=IOV) NAME,SEX,AGE,HEIGHT,
     &  WEIGHT  
        WRITE(*,200) 'filei.10: read ',X
        PRINT *,'filei.10: after first read executed'
60      CONTINUE
!         PRINT *,'filei.20: before - executed'
! 30      CONTINUE
!         PRINT *,'filei.30: program ends correctly '
        CLOSE(UNIT=9)
C handle error in reading from input file
        GOTO 1000
110     FORMAT(A20,2X,I1,3X,I2,2X,I3,2X,F5.2)
200     FORMAT(A,F10.4)

C Name          columns 1-20
C Sex           column  23     (0=male, 1=female)
C Age (yr)      columns 27,28
C Height (cm)   columns 31-33
C Weight (kg)   columns 36-41  (nnn.dd)


777     CONTINUE
        PRINT *,'filei.777: Error in writing from file SURVEY.dat'
        PRINT *,'filei.777: IOSTAT value is', IOV
        IF (IOV .EQ. 5001) THEN
            PRINT *,'filei.777: ERROR: Trying to write past end of file'
        ELSE IF (IOV .EQ. -1) THEN
            PRINT *,'filei.777: END-OF-FILE reached!'
        END IF
        GOTO LABL
888     CONTINUE
        PRINT *,'filei.888: Error in reading from file SURVEY.dat'
        PRINT *,'filei.888: IOSTAT value is', IOV
        IF (IOV .EQ. -1) THEN
            PRINT *,'filei.888: END-OF-FILE reached!'
        END IF
        GOTO LABL
c handle error can't open input file
999     CONTINUE
        PRINT *,'filei.999: Error in opening file SURVEY.dat'
        PRINT *,'filei.999: maybe the path is wrong?'
        PRINT *,'filei.999: or the disk is full?'
        PRINT *,'filei.999: IOSTAT value is', IOV
1000    CONTINUE
        PRINT *,'filei.1000: input for example 6.2 of TMR Ellis, 1982'
        PRINT *,'filei.1000: Exiting. Bye.'
       END

C survey of max N (10000 as default)
C dataset (file SURVEY.dat) containing info about people
C Name          columns 1-20
C Sex           column  23     (0=male, 1=female)
C Age (yr)      columns 27,28
C Height (cm)   columns 31-33
C Weight (kg)   columns 36-41  (nnn.dd)
C END OF DATASET ---> 9 in column 23
