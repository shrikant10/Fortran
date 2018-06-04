! Fretboard Calculator

program fretcalc

  implicit none
  
  real :: fconst = 2.0**(1.0/12.0)
  real :: scale_length = 25.5		! [inches]
  integer :: total_frets = 24
  integer :: fret
  
  
  100 format (i3, 5x, f5.2)	! i3 -   integer with 3 blocks - Fret numbers
  		! 5x -   5 spaces
  		! f5.2 - floating point no. 5 blocks wide with 2 decimal blocks
  

  open (unit =1, file='frets.dat')
  
  do fret= 1, total_frets
    write(unit=1, fmt=100) fret, scale_length/(fconst**fret)
    print *, fret, scale_length/(fconst**fret)
  end do
  
end program fretcalc
