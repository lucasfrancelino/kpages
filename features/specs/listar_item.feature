#language:pt

@listar @usr @logout
Funcionalidade: Listar produtos
    Para listar os produtos cadastrados
    Sendo usuário autenticado no sistema 
    Posso visualizar a lista de produtos

    Cenario: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos
        Entao vejo Fabricante
        E descricao
        