#language:pt

@erro4 @usr
Funcionalidade: Editar item
    Para mostrar na edição o botão de habilitado
    Sendo usuário autenticado no sistema 
    Posso editar e ver o botão sendo habiitado sozinho

    Contexto: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos
        Quando solicito a alteração

    Cenario: Verificar a edição do checkbox habilitado 
        E solicito alterar
        Entao vejo a tela de listagem com a coluna Habilitado em "Sim" 

    Cenario: Cancelar edição
        E solicito Voltar
        Entao vejo a tela de listagem com a coluna Habilitado em "Sim"

    Cenario: Editando os campos sem salvar 
        E preencho os campos liberados para cadastro sem fabricante
            | Descricao    | Moto G7  |
            | Quantidade   | 286      |
            | Preco        | 619.85   |
        Entao solicito Voltar
        E vejo a tela de listagem zerada