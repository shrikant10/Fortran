program graph_conv

  implicit none
  
  type Graph
    integer :: v  ! Num of Vertices
    integer :: e  ! Num of edges
    integer, dimension(:,:), allocatable :: edgeList 
  end type Graph

  type(Graph) :: G1

  integer, dimension(:,:), allocatable :: adj_mat
    
  ! Taking input from data
  integer :: a,b,i,x,y,j
  open(unit =1, file='input.dat')
  read(unit =1, FMT=*) a, b
  G1%v = a
  G1%e = b
  
  allocate(G1%edgeList(b,2))
  allocate(adj_mat(a,a))
  
  adj_mat(:,:) = 0
  
  do i = 1,b
    read(unit = 1,FMT=*) x,y
    G1%edgelist(i-1,0) = x
    G1%edgelist(i-1,1) = y
    adj_mat(x,y) = 1
    adj_mat(y,x) = 1
  end do
  print *, a + b 
  
  do i = 0,a-1
    do j = 0,a-1
      print *, adj_mat(i,j)
    end do
  end do
  
  !deallocate(G1%edgeList)
  !deallocate(adj_mat)
  close(unit=1)
end program graph_conv
