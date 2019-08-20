#Defeitos no cadastro
Quando("preencho os campos liberados para cadastro sem fabricante") do |table|
  zera_lista = table.rows_hash
  @produtos.sem_fabricante(zera_lista)
end

Entao("vejo a tela de listagem zerada") do
  expect(page).to have_content 'Lista de Produtos'
end

#Validando tamnho de campo
Quando("preencho os campos liberados") do |table|
  caracteres = table.rows_hash
  @produtos.numero_caracteres(caracteres)
end

Entao("vizualizo a listagem") do
  expect(page).to have_content 'Lista de Produtos'
end

#Validando exclusão
Entao("vejo a mensagem de confirmação {string}") do |mensagem|
  expect(page).to have_content mensagem
end

Entao("cancelo a solicitacao") do
  click_button('Cancelar')
end

Entao("vejo a tela de listagem com a mensagem {string}") do |msg_no_data|
  expect(page).to have_content msg_no_data
end

#Editar Produto
Quando("vejo a tela de listagem com a coluna Habilitado em {string}") do |sim|
  expect(page).to have_content sim
end

Quando("solicito Voltar") do
  find('span', text: 'Voltar').click
end

#Filtrar busca
Quando("eu preencho os campos liberados para incluir multiplos produtos") do |table|
  multiplos_produtos = table.rows_hash
  @produtos.adicionar_muitos(multiplos_produtos)
end
  
Entao("solicito a busca") do
    click_button('Filtrar')
end
  
Entao("preencho os campos liberados para filtrar") do |table|
  buscar = table.rows_hash
  @produtos.filtrar(buscar)
end
  
Entao("solicito filtrar") do
    find('span', text: 'Filtrar').click
end
  
Entao("vejo a tela de listagem com os produtos") do
  expect(page).to have_content 'Lista de Produtos'
end