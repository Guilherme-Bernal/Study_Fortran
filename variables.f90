program variables
  implicit none ! Regra de ouro: obriga-nos a declarar tudo!

  integer :: idade = 22
  real :: pi = 3.1415
  logical :: aprender_fortran = .true.
  character(len=10) :: nome = "Guilherme"

  print *, "Olá ", nome
  print *, "Idade:", idade
  print *, "vamos aprender Fortran?", aprender_fortran
  print *, "qual o valor de pi ? ", pi
  
end program variables
