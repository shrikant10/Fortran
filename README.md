# Fortran

-------------------------------------------------------
Tutorials
-------------------------------------------------------

1. https://www.tutorialspoint.com/fortran/index.htm

2. Practice Programs || Video Tutorials
   https://www.youtube.com/user/hexafoil/feed

-------------------------------------------------------
Basic Syntax
-------------------------------------------------------

program p_name
  implicit none
  
  ! type declartion statements
  ! executanle statements
  
end program p_name

-------------------------------------------------------
Data Types
-------------------------------------------------------

integer :: a,b,c, !kind=4

integer(kind = 2) :: short_int
integer(kind = 4) :: long_int
integer(kind = 8) :: vlong_int
integer(kind = 16) :: vvlong_int

huge(vlong_int) ! max value stored

! Single Precision  - 32 bit floating point nums
! Double Precision  - 64 bit floating point nums

real ::   ! Floating point nums

complex :: cx
logical :: flag
character (len = 40) :: name

cx = (3.0, 5.0)
cx = cmplx(3.0, 5.0)

flag = .true

name = "Shrikant Gupta"

data_type, parameter :: pi = 3.14  ! Named Constant

-------------------------------------------------------
Operators
-------------------------------------------------------
Arithmetic    + - * / **

Relational    == /= > < >= <= 

Logical       .and. .or. .not. .eqv. .neqv.

-------------------------------------------------------
Condition & Looping
-------------------------------------------------------

if () then

else if () then

else

end if


select case


do i = s,e
  ! run
end do

do while (n <= 10)       
    nfact = nfact * n 
    n = n + 1
    print*,  n, " ", nfact   
end do

-------------------------------------------------------
Arrays 
-------------------------------------------------------

real, dimension(5) :: numbers
integer, dimension(5) :: matrix




For comilation only use flag -c
>> ifort -c filename.f90

Format specifier  *

Installing gnuplot
>> sudo apt-get install gnuplot
plot 'filename.dat' using 1:2
