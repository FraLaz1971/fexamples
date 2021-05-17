C from Ellis,1982 adapt. example 4.4 p.57
C program that prints multiplication tables
C from 1 times up to 10 times
        PROGRAM TABLES
        INTEGER REL(10)
        INTEGER I, J, NMIN, NMAX
        CHARACTER*16 RAW
        NMIN=2
        NMAX=11
        RAW=' '
        DO 10, I=NMIN,NMAX
            DO 20, J=NMIN,NMAX
                REL(J-1) = (I-1)*(J-1)
20          CONTINUE
            WRITE (*,100) REL
10      CONTINUE
100     FORMAT(10(I4))
        PRINT *, '* Program Ended.Bye. *'
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
