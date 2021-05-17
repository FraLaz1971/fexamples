        program inpdat
c
c This program reads n points from a data file and stores them in
c 3 arrays x, y, z.
c
        integer nmax, u
        parameter (nmax=10, u=20)
        real x(nmax), y(nmax), z(nmax)
c Open the data file
        open (u, FILE='points.dat', STATUS='OLD')
c Read the number of points
        read(u,*) n
        if (n.GT.nmax) then
            write(*,*) 'Error: n = ', n, 'is larger than nmax =', nmax
        goto 9999
        endif

c Loop over data points

        do 10 i= 1, n
            read(u,100) x(i), y(i), z(i)
10      continue

100     format (3(F10.4))
c Close the file
        close (u)
c Now we should process the data somehow...
        do 20 i= 1, n
            write(*,*) 'writing reading 3D points, dimension ', nmax
            write(*,*) x(i), y(i), z(i)
20      continue

9999    stop
        end
