#language:pt

@erro2 @usr 
Funcionalidade: Validado tamnho de campo
    Para validação do tamnho dos campos
    Sendo usuário autenticado no sistema 
    Posso verificar quantos caracteres são aceitos

    Contexto: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos
        Quando solicito a inclusão

    Cenario: validando tamanho dos campos 
        E preencho os campos liberados
            | Descricao    | Moto     |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        Entao solicito incluir
        E vizualizo a listagem