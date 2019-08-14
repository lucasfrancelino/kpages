Dado("que eu acesso o sistema") do
    @login = LoginPage.new
    @login.load
    sleep 2
end

Quando("faço login com {string} e {string}") do |username, password|
    expect(@login.title.text).to have_content 'Teste Técnico para Tester'
    fill_in 'username', with: username
    fill_in 'password', with: password
    click_button('Login')
    sleep 3
end

Entao("sou autenticado com sucesso") do
    expect(page).to have_content 'Lista de Produtos'
end

Entao("devo ver a mensagem {string}") do |mensagem_alerta|
    expect(@login.alert.text).to eql mensagem_alerta
end