C from Ellis,1982 adapt. example 4.2 p.52-53
C A class of N students has done an exam, marks are assigned
C THIS PROGRAM first READS the n. of poeple doing an exam
C Then read their marks and print the highest and lowest marks,
C and then the average mark.
C marks are in [0:30] range
        PROGRAM HMARK
C RSUM is the sum of all marks values
C MINM is the minimum mark in the class
C MINM is the minimum mark in the class
C TEMPM is the mark currently read
        REAL AVMK, RSUM
        INTEGER I, TEMPM, NSTUD
        INTEGER MINM, MAXM, DEBUG
C NSTUD is the number of students to be evaluated
C AVMK is the average mark of the class
        DEBUG = 0
        RSUM = 0.0
        MAXM = 0
        MINM = 31
        IF (DEBUG.EQ.1) PRINT *,'getting n. of students'
        READ (*,*) NSTUD
        PRINT *,'n. of students read:', NSTUD
        DO 10, I=1,NSTUD
            IF (DEBUG.EQ.1) PRINT *,'getting mark'
            READ (*,*) TEMPM
            IF (DEBUG.EQ.1) PRINT *,'read mark ', TEMPM
            RSUM = RSUM + TEMPM
            IF (TEMPM.LT.MINM) MINM = TEMPM
            IF (TEMPM.GT.MAXM) MAXM = TEMPM
10      CONTINUE
        PRINT *, 'The n. of marks read is ', I-1
        PRINT *, 'The final sum is ', RSUM
        PRINT *, 'The marks average is ', RSUM/NSTUD
        PRINT *, 'The maximum mark is ', MAXM
        PRINT *, 'The minimum mark is ', MINM
        END
C ./marks <data/marks.dat
C on posix (GNU/Linux, MacOS(X), BSD, cygwin, msys2 mingw, wsl, ...)
C or just
C marks <data\marks.dat
C on Microsoft cmd
C This is the pseudo-code structure plan
C 1 Initialisation
C  1.1 Initialise the sum variable to zero
C  1.2 Initialise the maximum mark to zero
C  1.3 Initialise the minimum mark variable to a large value
C 2 Read n. of examinees (N)
C 3. Repeat N times
C   3.1 Read a mark
C   3.2 Add it to the cumulative sum
C   3.3 Set the current maximum
C   3.4 Set the current mainimum
C 4. Calculate average mark
C 5. Calculate and print max, min and avg marks
