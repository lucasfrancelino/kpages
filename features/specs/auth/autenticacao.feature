#language:pt
@autenticacao
Funcionalidade: Login
    Para que eu possa ter acesso as funcionalidades
    Sendo um usuario válido
    Posso logar no sistema com meus dados de acesso

    Contexto: Tela de login
        Dado que eu acesso o sistema

    @logout
    Cenário: Login - Administrador de sistema
        Quando faço login com "admin" e "111111"
        Entao sou autenticado com sucesso