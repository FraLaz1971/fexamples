PROGRAM circle
IMPLICIT NONE
! This program calculates the equation of a circle passing
! through three points
! Variable declarations
REAL:: xl,yl,x2,y2,x3,y3,a,b,r
! Step 1
PRINT *,"Please type the coordinates of three points"
PRINT *,"in the order xl,yl,x2,y2,x3,y3"
READ *,xl,yl,x2,y2,x3,y3
 ! Read the three points
! Step 2
CALL calculate_circle(xl,yl,x2,y2,x3,y3,a,b,r)
! Step 3
PRINT *,"The centre of the circle through these points is &
&(",a,",",b,")"
PRINT *,"Its radius is ",r
END PROGRAM circle
