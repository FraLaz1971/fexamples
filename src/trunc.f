C print the splash banner
        SUBROUTINE SPLASH
            PRINT *,'*******************************'
            PRINT *,'* program trunc.f'
            PRINT *,'* shows behavior of rounding'
            PRINT *,'* of integer division'
            PRINT *,'* saved into a real variable'
            PRINT *,'*******************************'
        END
C shows integer division and assignments issues
        PROGRAM TRUNC
c declaration section
            REAL ANS
            INTEGER I,J,K
c print program info
            CALL SPLASH
c assignment section
            I = 5
            J = 2
            k = 4
            ANS = I/J*K
            PRINT *,'I,J,K are INTEGER'
            PRINT *,'ANS is REAL'
            PRINT *,'I is',I
            PRINT *,'J is',J
            PRINT *,'K is',K    
            PRINT *,'ANS (=I/J*K) is',ANS            
        END
