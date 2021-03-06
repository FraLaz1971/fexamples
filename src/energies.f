C shows the usage of f77 statement functions
C path to current directory. 
C ends the FULLNAME function
        PROGRAM ENERGIES
            DOUBLE PRECISION C,E,M
            INTEGER          I,NMAX
C light speed constant 299792458 m/s D = double float real            
            PARAMETER(C=299792458D0,NMAX=14)
            DOUBLE PRECISION ENERGY(NMAX),MASS(NMAX)
            E(M) = M*C**2
C reads NMAX masses values from stdin 
C interactively or from file using redirection (.\energies < infile.dat)
            WRITE(*,*) '# Please, enter ', NMAX, 'mass values (kg)'
            DO 10, I = 1, NMAX
                READ(*,*) MASS(I)
10          CONTINUE
C compute energies for each mass and save them in the ENERGY() array
            DO 20, I = 1, NMAX
                ENERGY(I) = E(MASS(I))
20          CONTINUE
C prints out energy array values on stdoutse
C terminal screen or reditected to a file
C .\energies < infile.dat > outfile.dat
            DO 30, I = 1, NMAX
                WRITE(*,*) ENERGY(I)
30          CONTINUE
            WRITE(*,*) '# End of Program.Bye.'
        END 

