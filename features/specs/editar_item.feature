#language:pt

@editar @usr @logout
Funcionalidade: Cadastrar novo produto
    Para inclusão de um novo produto
    Sendo usuário autenticado no sistema 
    Posso cadastrar um novo produto

    Contexto: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos
        Quando solicito a alteração
        
    Cenário: Editar produto
        Quando eu preencho os campos liberados para alteracao um produto    
            | Descricao    | Iphone X |
            | Fabricante   | Apple    |
            | Quantidade   | 2866     |
            | Preco        | 619.85   |
        E solicito alterar

    Cenário: Campos obrigatórios
        Quando eu preencho os campos liberados para alteracao um produto
            | Descricao    |          |
            | Fabricante   | Motorola |
            | Quantidade   | 555      |
            | Preco        | 619.85   |
        E solicito alterar
        Então visualizo a mensagem "O campo descrição é obrigatório"
    
    Cenário: Campos obrigatórios
        Quando eu preencho os campos liberados para alteracao um produto
            | Descricao    | Galaxy S10  |
            | Fabricante   | Samsung     |
            | Quantidade   | 0           |
            | Preco        | 619.85      |
        E solicito alterar
        Então visualizo a mensagem "O campo quantidade deve ser maior que zero"