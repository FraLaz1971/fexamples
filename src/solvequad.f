	PROGRAM OUAD4
C
C This program reads the coefficients of a quadratic equation of
C the form
C A * X**2 + B * X + C = 0,
C and solves for the roots of the equation (FORTRAN 77 style).
C
C Get the coefficients of the quadratic equation.
C
        REAL A,B,C,DISCR
        WRITE (*,*) 'Computing solutions for'
        WRITE (*,*) 'Equation A * X**2 + B * X + C '
90      WRITE (*,*) 'Enter the coefficients A B and C: '
        WRITE (*,*) '(with A not eq. to 0) :'
	    READ (*,*) A, B, C
C
	    IF ((A - 0).LT.0.000001) THEN 
            WRITE (*,*) 'Illegal value for coeff. A'
            GOTO 90
	    END IF
C
C Echo the coefficients to make sure they are entered correctly.
C
	WRITE (*,100) 'The coefficients are: ',  A, B, C
100 	FORMAT (1X,A,3F10.4)
C
C Check the discriminant and calculate its roots.
C
	DISCR = B**2 - 4.*A*C
	WRITE (*,*) 'Discriminant (= B**2 - 4.*A*C) is ', DISCR
	IF ( DISCR .LT. 0) THEN
		WRITE (*,*) 'This equation has complex roots:'
		WRITE (*,*) 'X_1 = ', -B/(2.*A),  '+i *',
     &	SQRT(ABS(DISCR))/(2.*A)
		WRITE (*,*)  'X_2 = ', -B/(2.*A),  '-i *',
     &	SQRT(ABS(DISCR))/(2.*A)
		ELSE IF ( ((B**2 - 4.*A*C) - 0).LT.0.000001) THEN
		WRITE (*,*)  'Equation with single repeated real root:'
		WRITE (*,*)  'X_1 = X_2 =', -B/(2.*A)
	ELSE
		WRITE (*,*)  'Equation with two distinct real roots:'
		WRITE (*,*) 'X_1 =', (-B + SQRT(ABS(DISCR)))/(2.*A)
		WRITE (*,*) 'X_2 =', (-B - SQRT(ABS(DISCR)))/(2.*A)
	END IF
C
	END
