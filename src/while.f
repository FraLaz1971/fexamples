! this program simulates a while construct with the use of if and goto label
	program while
		integer in,imax
		in = 1
		imax = 1
                write (*,*) 'Please, enter superior limit:'
                read (*,*) imax
                write (*,*) 'printing 2^n with n between',in,imax
10 		if (in .le. imax) then
			in = 2*in
			write (*,*) in
			goto 10
		endif
		stop
	end
