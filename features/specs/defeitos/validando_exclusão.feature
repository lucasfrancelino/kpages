#language:pt

@erro3 @usr
Funcionalidade: Verificando exclusão
    Para verificar exclusão dos itens
    Sendo usuário autenticado no sistema 
    Posso excluir os itens sem nenhuma veriicação

    Contexto: Tela de listagem produtos
        Dado que eu acesso a listagem de produtos

    Cenario: Negar solicitação de exclusão
        Quando solicito a exclusão
        Entao vejo a mensagem de confirmação "Deseja excluir esse item?"
        E cancelo a solicitacao
    
    Cenario: Mensagem em ingles 
        Dado que eu acesso a listagem de produtos
        Entao solicito a exclusão de 10 iten(s)
        E vejo a tela de listagem com a mensagem "No Data"