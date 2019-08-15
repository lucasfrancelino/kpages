#language:pt

@cadastrar @usr @logout
Funcionalidade: Cadastrar novo produto
    Para inclusão de um novo produto
    Sendo usuário autenticado no sistema 
    Posso cadastrar um novo produto

    Contexto: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos
        Quando solicito a inclusão
    
    
    Cenário: Incluir produto
        Quando eu preencho os campos liberados para incluir um produto
            | Descricao    | Moto G7  |
            | Fabricante   | Motorola |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        E solicito incluir
    
    Cenário: Campos obrigatórios
        Quando eu preencho os campos liberados para incluir um produto
            | Descricao    |          |
            | Fabricante   | Motorola |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        E solicito incluir
        Então visualizo a mensagem "O campo descrição é obrigatório"

        #erro ao incluir produto sem fabricante (zera a listagem ja cadastrada)
    
    Cenário: Campos obrigatórios
        Quando eu preencho os campos liberados para incluir um produto
            | Descricao    | Moto G7  |
            | Fabricante   | Motorola |
            | Quantidade   | 0        |
            | Preco        | 619.85   |
        E solicito incluir
        Então visualizo a mensagem "O campo quantidade deve ser maior que zero"