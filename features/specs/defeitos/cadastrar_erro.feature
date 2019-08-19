#language:pt

@erro1 @usr 
Funcionalidade: Cadastrar novo produto sem fabricante
    Para inclusão de um novo produto sem fabricante
    Sendo usuário autenticado no sistema 
    Posso cadastrar um novo produto

    Contexto: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos
        Quando solicito a inclusão

    Cenario: Inclusão de produto sem fabricante 
        E preencho os campos liberados para cadastro sem fabricante
            | Descricao    | Moto G7  |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        Entao solicito incluir
        E vejo a tela de listagem zerada
    
    Cenário: Incluir produto
        Quando eu preencho os campos liberados para incluir um produto
            | Descricao    | Moto G7  |
            | Fabricante   | Motorola |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        E solicito incluir
        E vejo a tela de listagem zerada
        