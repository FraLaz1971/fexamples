        PROGRAM QUAD4
C This program reads the coefficients of a quadratic equation of
C the form
C A * X**2 + B * X + C = 0,
C and solves for the roots of the equation (FORTRAN 77 style).
C Get the coefficients of the quadratic equation.
        REAL DISC,A,B,C
        WRITE(*,*) 'Enter the coefficients A, B and C: '
        READ (*,*) A, B, C
C Echo the coefficients to make sure they are entered correctly.
        WRITE (*,100) 'The coefficients are : ', A, B, C
100     FORMAT (1X,A,3F10.4)
C
C Check the discriminant and calculate its roots.
C
        DISCR = B**2 - 4.*A*C
        WRITE(*,*) 'Discriminant is ', DISCR
        IF ( DISCR .LT. 0) THEN
            WRITE(*,*) ' This equation has complex roots:'
            WRITE(*,*) ' X = ', -B/(2.0*A), ' +i ', 
     &      SQRT(ABS(DISCR))/(2.0*A)
            WRITE(*,*) ' X = ', -B/(2.0*A), ' -i ', 
     &      SQRT(ABS(DISCR))/(2.0*A)
        ELSE IF ( (B**2 - 4.0*A*C) .EQ. 0) THEN
            WRITE(*,*) ' This equation has a single repeated real root:'
            WRITE(*,*) ' X = ', -B/(2.0*A)
        ELSE
            WRITE(*,*) ' This equation has two distinct real roots:'
            WRITE(*,*) ' X = ', (-B + SQRT(ABS(DISCR)))/(2.*A)
            WRITE(*,*) ' X = ', (-B - SQRT(ABS(DISCR)))/(2.*A)
        END IF
C
        END
