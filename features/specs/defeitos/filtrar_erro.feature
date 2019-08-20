#language:pt

@erro5 @usr
Funcionalidade: Filtrar lista
    Para filtrar um item em uma lista de produtos
    Sendo usuário autenticado no sistema 
    Posso buscar o que procuro

    Cenário: Filtrar produtos cadastrados
        Dado que eu acesso a listagem de produtos
        Quando solicito a inclusão
        E eu preencho os campos liberados para incluir multiplos produtos
            | Descricao    | Moto G7  |
            | Fabricante   | Motorola |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        E vizualizo a listagem 
        Entao solicito a busca
        E preencho os campos liberados para filtrar
            | Descricao    | Moto G7  |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        Entao solicito filtrar
        E vejo a tela de listagem com os produtos