#language:pt


Funcionalidade: Excluir Produto
    Para remover os produtos cadastrados 
    Sendo usuário autenticado no sistema
    Posso excluir um produto que não tenha mais em estoque

    Cenario: Exclusão de um produto
        Dado que eu acesso a listagem de produtos
        Entao solicito a exclusão

    @excluir @usr @logout
    Cenario: Exclusão de multiplos produtos produto
        Dado que eu acesso a listagem de produtos
        Entao solicito a exclusão de 10 iten(s)