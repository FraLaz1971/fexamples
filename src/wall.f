C from Ellis,1982 adapt. exercise 3.7 p.46-47
C THIS PROGRAM CALCULATES THE NUMBER OF BRICKS
C A man wishes to build a wall 4ft high along one
C side of his garden. Each row of bricks is 3in high
C and the mortar between each row is 1/2in thick.
C Each brick is 9in long and there is 1/2in of mortar
C between them. If the wall is to be exactly 23ft 6in long,
C how many bricks will be required?
C 1ft = 12in = 0.3048m; 1in = 2.54cm; 23ft 6in = 282in
C wall height = 4ft = 48in ; wall length = 23*12+6 = 282in
C 3*14+13*0.5 = 48.5 inches; 3*n+(n-1)*1/2 = 48
C 3*n+(n-1)*1/2 = 48 --> 3n + n/2 -1/2 = 48
C n*7/2  = 48 + 1/2 = 97/2 --> n = (97/2)*(2/7) = 97/7 = 
C maybe 14*30 bricks = 420 bricks
        PROGRAM WALL
C BRICH n. of bricks in wall height (interleaves included)
        INTEGER BRICH
C BRICH n. of bricks in wall length (interleaves included)
        INTEGER BRICL
C BRICRL tot n. of bricks in wall lenght
        INTEGER TOTNBR 
C INTEGER I
C 4ft = 48in
        BRICH=1
10      IF ((3*BRICH+(BRICH-1)*0.5).LT.48) THEN
             BRICH = BRICH + 1
        ELSE 
            GOTO 20
        END IF
        GOTO 10
20      CONTINUE
        PRINT *,'There are needed ',BRICH, ' bricks'
        PRINT *,'To cover the height of ', 48, ' inches'
        PRINT *,'The actual length it is ',
     &  3*BRICH+(BRICH-1)*0.5, ' inches'
        BRICL=1
30      IF ((9*BRICL+(BRICL-1)*0.5).LT.282) THEN
             BRICL = BRICL + 1
        ELSE 
            GOTO 40
        END IF
        GOTO 30
40      CONTINUE
        PRINT *,'There are needed ',BRICL, ' bricks'
        PRINT *,'To cover the lenght of ', 282, ' inches'
        PRINT *,'The actual length it is ', 
     &   9*BRICL+(BRICL-1)*0.5, ' inches'
        PRINT *,' '
        PRINT *,'The tot n. of bricks required is', BRICH*BRICL
        END
C ./wall 
C on posix (GNU/Linux, MacOSX, BSD, cygwin, msys2 mingw...)
C or just
C wall 
C on Microsoft cmd terminal
