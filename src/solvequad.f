	PROGRAM OUAD4
C
C This program reads the coefficients of a quadratic equation of
C the form
C A * X**2 + B * X + C = 0,
C and solves for the roots of the equation (FORTRAN 77 style).
C
C Get the coefficients of the quadratic equation.
C
        REAL A,B,C,DISCR,TEMP
        LOGICAL TEMP1,TEMP2
        WRITE (*,*) 'Computing solutions for'
        WRITE (*,*) 'Equation A * X**2 + B * X + C = 0'
90      WRITE (*,*) 'Enter the coefficients A B and C: '
        WRITE (*,*) '(with A not eq. to 0) :'
	    READ (*,*) A, B, C
C
	WRITE (*,100) 'ABS(A) is: ',  ABS(A)
	    IF (ABS(A).LT.0.000001) THEN 
            WRITE (*,*) 'Illegal value for coeff. A'
            GOTO 90
	    END IF
C
C Echo the coefficients to make sure they are entered correctly.
C
	WRITE (*,200) 'The coefficients are: ',  A, B, C
C
C Check the discriminant and calculate its roots.
C
	DISCR = B**2 - 4.0*A*C
	WRITE (*,'(A,F15.6)') 'Discriminant (= B**2 - 4*A*C) is ', DISCR
	IF ( DISCR .LT. 0) THEN
		WRITE (*,*) 'This equation has complex roots:'
		WRITE (*,*) 'X_1 = ', -B/(2.0*A),  '+i *',
     &	SQRT(ABS(DISCR))/(2.*A)
		WRITE (*,*)  'X_2 = ', -B/(2.0*A),  '-i *',
     &	SQRT(ABS(DISCR))/(2.*A)
      ELSE IF (ABS(DISCR).LT.0.000001) THEN
		WRITE (*,*)  'Equation with single repeated real root:'
		WRITE (*,'(A,F15.6)')  'X_1 = X_2 =', -B/(2.0*A)
	ELSE IF ( DISCR .GT. 0.0) THEN
        WRITE (*,*)  'Equation with two distinct real roots:'
            WRITE (*,*) 'X_1 =', (-B + SQRT(ABS(DISCR)))/(2.0*A)
            WRITE (*,*) 'X_2 =', (-B - SQRT(ABS(DISCR)))/(2.0*A)
	END IF
C
100 	FORMAT (1X,A,3F10.6)
200 	FORMAT (A,F15.6,' ',F15.6,' ',F15.6,' ')
	END
