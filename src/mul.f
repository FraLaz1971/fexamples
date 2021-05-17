        PROGRAM MUL
C         Purpose:
C         To illustrate some of the basic features of a Fortran program.
C         
C         Declare the variables used in this program.
        REAL  i, j, k
C All variables are integers
C Get two values to store in variables i and j
        WRITE (*,*) '***************************** '
        WRITE (*,*) '* multiplying 2 real numbers '
        WRITE (*,*) '* with accuracy 1/1000'
        WRITE (*,*) '***************************** '
        WRITE (*,*) 'Enter 2 numbers to multiply: '
        READ (*,*) i, j
C Multiply the numbers together
        k = i * j
C Write out the result.
        WRITE (*,200) i,' times',j,' = ', k
100     FORMAT(2(F10.3)) 
200     FORMAT(F10.3,A,F10.3,A,F10.3) 
C Finish up.
        END
