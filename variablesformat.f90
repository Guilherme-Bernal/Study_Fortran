program variablesformat
    implicit none

    integer :: idade = 22
    real :: pi = 3.1415
    logical :: aprender_fortran = .true.
    character (len=9):: nome = "Guilherme"

    ! 'A' é para caracteres (Alphanumeric)
    ! 'I0' imprime o inteiro sem espaços extras à esquerda
    ! 'L1' imprime apenas T ou F para lógicos
    ! 'F6.4' imprime um real com 6 espaços no total e 4 casas decimais
    
    print '(A, A)', "Olá ", nome
    print '(A, I0)', "Idade: ", idade
    print '(A, L1)', "Vamos Aprender Fortran ?", aprender_fortran
    print '(A, F6.4)', "Qual o valor de PI ? ", pi

end program variablesformat