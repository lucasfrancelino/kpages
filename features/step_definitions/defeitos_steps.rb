#Defeitos no cadastro
Quando("preencho os campos liberados para cadastro sem fabricante") do |table|
  zera_lista = table.rows_hash
  @produtos.sem_fabricante(zera_lista)
end

Entao("vejo a tela de listagem zerada") do
  sleep 5
  expect(page).to have_content 'Lista de Produtos'
end