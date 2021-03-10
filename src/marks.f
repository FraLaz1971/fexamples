C from Ellis,1982 adapt. example 4.1 p.52
C THIS PROGRAM READS 100 exam marks and calculate
C the average mark.
        PROGRAM MARKS
C RSUM is the sum of all marks values
        REAL RSUM, TEMPM
C NMARKS is the number of marks to be summed
        INTEGER NMARKS
        DO 10 NMARKS=1,100
            READ (*,*) TEMPM
            RSUM = RSUM + TEMPM
10      CONTINUE
        PRINT *, 'The final sum is ', RSUM
        PRINT *, 'The marks average is ', RSUM/100.0
        END
C ./marks data/marks.dat
C on posix (GNU/Linux, MacOS(X), BSD, cygwin, msys2 mingw...)
C or just
C marks data\marks.dat
C on Microsoft cmd
C This is the pseudo-code structure plan
C 1. Initialise the sum variable to zero
C 2. Repeat 100 times
C   2.1 Read a mark
C   2.2 Add it to the cumulative sum
C 3. Calculate and print average mark
