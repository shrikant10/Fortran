! Quadratic formula calculator

program quadform
  
  implicit none
  
  real :: a, b, c
  real :: D, r1, r2   !Discriminant D | root | root
  
  print *, "Enter values for a, b and c [Space or comma seperated]"
  read *, a, b, c
  
  D = b**2 - (4*a*c)
  
  if (D<0) then
    print *, "Roots are imaginary"
    
  else if (D == 0) then
    r1 = (-b - sqrt(D))/(2*a)
    print *, "Roots are equal: ", r1
  
  else
    r1 = (-b - sqrt(D))/(2*a)
    r2 = (-b + sqrt(D))/(2*a)
    print *, 'Roots: ',r1, r2
  end if
  
end program quadform
