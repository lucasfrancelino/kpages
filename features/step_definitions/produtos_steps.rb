#Cadastrar
Dado("que eu acesso a listagem de produtos") do
  @produtos.load
  sleep 2
end

Quando("solicito a inclusão") do
  @produtos.cadastrar_icon.click
end

Quando("eu preencho os campos liberados para incluir um produto") do |table|
  cadastrar_novo_produto = table.rows_hash
  @produtos.cadastrar_produto(cadastrar_novo_produto)
end

Quando("solicito incluir") do
  find('span', text: 'Cadastrar').click
end

Então("visualizo a mensagem {string}") do |msg_alerta|
  expect(page).to have_content msg_alerta
end

#Listar
Entao("vejo Fabricante") do
  expect(page).to have_content 'Fabricante'
end

Entao("descricao") do
  expect(page).to have_content 'Descrição'
end

#Editar
Quando("solicito a alteração") do
  first('.el-icon-edit').click
end

Quando("eu preencho os campos liberados para alteracao um produto") do |table|
  alterar_produto = table.rows_hash
  @produtos.alterar_produto(alterar_produto)
end

Quando("solicito alterar") do
  find('.el-button--warning', text: 'Editar').click
end

#Excluir
Entao("solicito a exclusão") do
  first('.el-icon-delete').click
end

Entao("solicito a exclusão de {int} iten\\(s)") do |itens|
  itens.times do
    first('.el-icon-delete').click
  end
end