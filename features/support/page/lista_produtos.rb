class ProdutosPage < SitePrism::Page
    set_url '/product'

    #cadastrar produto
    element :cadastrar_icon, '.el-icon-plus'

    element :descricao_input, :xpath, "/html/body/div/div/div[2]/section/div/form/div[1]/div/div/div/input"
    element :fabricante_combo, "[placeholder='Selecione um Fabricante']"
    element :quantidade_input, :xpath, "/html/body/div/div/div[2]/section/div/form/div[4]/div/div/div/input"
    element :preco_input, :xpath, "/html/body/div[1]/div/div[2]/section/div/form/div[5]/div/div/div/input"

    def cadastrar_produto(tabela)
      descricao_input.set tabela['Descricao']
      fabricante_combo.click
      find('.el-select-dropdown__item', :text => tabela['Fabricante']).select_option
      quantidade_input.set tabela['Quantidade']
      preco_input.set tabela['Preco']
    end


end