C exercise implemented including exercises from the book 
C "GUIDA AL FORTRAN APPLICATO"
C Zaninetti Lorenzo, 1998
C (applied guide to fortran, in italian)

	DOUBLE PRECISION FUNCTION factrl(n)
	INTEGER n
	INTEGER j,ntop
	REAL a(33),gammln
	SAVE ntop,a
	DATA ntop,a(1)/0,1./
	if (n.lt.0) then
		pause 'negative factorial in factrl'
	else if (n.le.ntop) then
		factrl=a(n+1)
	else if (n.le.32) then
		do 11 j=ntop+1,n
		a(j+1)=j*a(j)
11		continue
		ntop=n
		factrl=a(n+1)
	else
		factrl=exp(gammln(n+1.))
	endif
	return
	END

        REAL FUNCTION MYSIN(P1,P2)
        REAL P1
        INTEGER P2
        REAL DELTA
        DOUBLE PRECISION FACTRL
        MYSIN = P1
        DO 10 P2 = 1,100
            DELTA = (-1)**P2 * P1**(2*P2+1) / FACTRL(2*P2+1)
            IF (ABS(DELTA) .LT. 1E-7) RETURN
10 	    MYSIN = MYSIN + DELTA
        RETURN
        END


	REAL FUNCTION gammln(xx)
	REAL xx
	INTEGER j
	DOUBLE PRECISION ser,stp,tmp,x,y,cof(6)
	SAVE cof,stp
	DATA cof,stp/76.18009172947146,-86.50532032941677,
     * 24.01409824083091,-1.231739572450155,.1208650973866179E-2,
     * -.5395239384953E-5,2.5066282746310005/
	x=xx
	y=x
	tmp=x+5.5d0
	tmp=(x+0.5d0)*log(tmp)-tmp
	ser=1.000000000190015d0
	do 11 j=1,6
	y=y+1.d0
	ser=ser+cof(j)/y
11	continue
	gammln=tmp+log(stp*ser/x)
	return
	END


	PROGRAM USEMYS
 	INTEGER IMP2
 	REAL MP1
 	REAL RES1
 	REAL MYSIN
 	PRINT *, 'INPUT A REAL VALUE'
	READ *, MP1
	IMP2 = 1
	RES1 = MYSIN(MP1, IMP2)
	PRINT *,'res1 = ', RES1
	PRINT *,'N. STEPS = ', IMP2
	END
