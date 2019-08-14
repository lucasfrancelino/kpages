class LoginPage < SitePrism::Page
    set_url '/#/login'
  
    element :title, '.title-container'
    element :username_input, "[placeholder='Username']"
    element :password_input, "[placeholder='Password']"
    
    element :log_in_button, '.button'
    
    element :alert, '.el-form-item__error'
    
    def logar(username, password)
      username_input.set username
      password_input.set password
      log_in_button.click
    end
  
    def sair
      find('.right-menu').click
      click_button('Log Out')
    end
end