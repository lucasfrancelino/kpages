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