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