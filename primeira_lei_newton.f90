program primeira_lei_newton
    implicit none
    
    real :: massa              ! massa do objeto (kg)
    real :: velocidade_inicial ! velocidade inicial (m/s)
    real :: forca_resultante   ! força resultante aplicada (N)
    real :: aceleracao         ! aceleração resultante (m/s²)
    real :: velocidade_final   ! velocidade após 1 segundo (m/s)
    real :: tempo              ! intervalo de tempo (s)
    character(len=20) :: estado_objeto  ! "repouso" ou "movimento"
        
    print *, '  PRIMEIRA LEI DE NEWTON - SIMULADOR'
 
    print *, 'Digite a massa do objeto (kg):'
    read *, massa
    
    print *, 'Digite a velocidade inicial (m/s):'
    read *, velocidade_inicial
    
    print *, 'Digite a forca resultante aplicada (N):'
    print *, '(Use 0 para nenhuma forca)'
    read *, forca_resultante
    
    print *, 'Digite o tempo de observacao (s):'
    read *, tempo
    
    if (velocidade_inicial == 0.0) then
        estado_objeto = 'repouso'
    else
        estado_objeto = 'movimento'
    end if
    
    ! Verificar se há força resultante
    if (forca_resultante == 0.0) then
        velocidade_final = velocidade_inicial
        aceleracao = 0.0
        
        print *, ''
        print *, '--- RESULTADO (1a Lei de Newton) ---'
        print *, 'Nao ha forca resultante!'
        print *, 'O objeto estava em:', estado_objeto
        print *, 'O objeto permanece em:', estado_objeto
        print *, 'Velocidade constante:', velocidade_final, 'm/s'
        
    else
        aceleracao = forca_resultante / massa
        velocidade_final = velocidade_inicial + (aceleracao * tempo)
        
        print *, ''
        print *, '--- RESULTADO (Forca aplicada!) ---'
        print *, 'Ha forca resultante:', forca_resultante, 'N'
        print *, 'Aceleracao:', aceleracao, 'm/s²'
        print *, 'Velocidade inicial:', velocidade_inicial, 'm/s'
        print *, 'Velocidade final:', velocidade_final, 'm/s'
        print *, ''
        print *, 'O objeto MUDOU seu estado de movimento!'
        
    end if
    
    
    
    if (forca_resultante == 0.0) then
        print *, 'Sem forca resultante, o objeto mantem'
        print *, 'seu estado: repouso -> repouso'
        print *, '          movimento -> movimento uniforme'
    else
        print *, 'Com forca resultante, o estado muda!'
        print *, 'Isso ja e a 2a Lei de Newton (F=ma)'
    end if
    
    print *, ''
    print *, 'Pressione ENTER para sair...'
    read *
    
end program primeira_lei_newton