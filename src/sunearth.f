C print the splash banner
        SUBROUTINE SPLASH
            PRINT *,'*******************************'
            PRINT *,'* program sunearth.f'
            PRINT *,'* compute the time taken'
            PRINT *,'* to travel from Sun to Earth'
            PRINT *,'*******************************'
        END
C shows integer division and assignments issues
        PROGRAM TRUNC
C declaration section
C LM: Light Minute,DIST: Distance,ELAP: elapsed time
C LY: Distance travelled by light in 1 year (km)
C LM: Distance travelled by light in 1 minute (km)
C DIST: distance from Sun to Earth in km (1AU)
C ELAP: time to travel distance DIST in minutes (real) 
            REAL LM, LY, DIST, ELAP
C MINU: minutes, SEC: seconds
C MINU is the integer part of ELAP 
C SEC is the integer number of seconds
C equivalent to fractional part of ELAP
            INTEGER MINU,SEC
            PARAMETER(LY=9.460730*10**12)
            LM = LY/(365.25*1440)
            DIST = 150*10**6
            ELAP = DIST / LM
            MINU = ELAP
            SEC = (ELAP - MINU)*60
C print program info
            CALL SPLASH
            PRINT *,'Light takes ', MINU, 'minutes'
            PRINT *,'            ', SEC, 'seconds'
            PRINT *,'To reach the Earth from the Sun'
        END
