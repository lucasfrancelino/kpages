class ProdutosPage < SitePrism::Page
    set_url ''

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

    def alterar_produto(tabela)
      descricao_input.set tabela['Descricao']
      fabricante_combo.click
      find('.el-select-dropdown__item', :text => tabela['Fabricante']).select_option
      quantidade_input.set tabela['Quantidade']
      preco_input.set tabela['Preco']
    end

    def sem_fabricante(tabela)
      descricao_input.set tabela['Descricao']
      quantidade_input.set tabela['Quantidade']
      preco_input.set tabela['Preco']
    end

    def numero_caracteres(tabela)
      descricao_input.set tabela['Descricao'] = Faker::Lorem.characters(number: 500).to_s
      quantidade_input.set tabela['Quantidade']
      preco_input.set tabela['Preco'] = Faker::Lorem.characters(number: 50).to_s
    end

    def adicionar_muitos(tabela)
      for cadastro in (0...5)
        cadastrar_icon.click
        descricao_input.set tabela['Descricao']
        fabricante_combo.click
        find('.el-select-dropdown__item', :text => tabela['Fabricante']).select_option
        quantidade_input.set tabela['Quantidade']
        preco_input.set tabela['Preco']
        find('span', text: 'Cadastrar').click
        sleep 2
      end
    end

    def filtrar(tabela)
      descricao_input.set tabela['Descricao']
      quantidade_input.set tabela['Quantidade']
      preco_input.set tabela['Preco']
    end

end