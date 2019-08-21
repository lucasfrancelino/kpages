## Automação com Ruby, Cucumber e Selenium WebDriver

> Projeto desenvolvido para testar algumas funcionalidades básicas de uma aplicação web, explorando o caminho feliz e 
apresentando suas falhas.

### Instalação do ambiente

Utilizo e vou mostar o download do Visual Studio Code, mas a IDE poderá ser qualqer uma que preferir.

Entre no site [visualstudio.com](https://code.visualstudio.com/) e faça o download da versão para seu Sistema Operacional, selecione
sempre a versão **_Stable_** pois ela é a versão estável do editor de texto.
![image](https://user-images.githubusercontent.com/30832888/63362899-f7904680-c348-11e9-93f8-bd3ae4bb3b2d.png)


1. Após feito o download vamos instalar, abra o arquivo e a instalação é padrão... next next finish.

### Para quem utiliza o Windows

É necessário que tenhamos o Console Emulator, pois ele nos ajuda a visualizar melhor e facilita na hora de desenvolver nossa automação.

Entre no site [cmder.net](https://cmder.net/), baixe a versão Full do CMDER.

1. Descompacte a pasta baixada;
2. Crie uma pasta chamada tools no Disco Local C:
![image](https://user-images.githubusercontent.com/30832888/63368382-27911700-c354-11e9-87a6-d7afa99cda06.png)

3. Mova o arquivo baixado e descompactado para dentro da pasta tools;
4. Ao abrir a pasta cmder clique em Cmder, irá abrir um terminal, é nesse terminal que iremos dar todos os comandos para executar nossos tester de regressão.
![image](https://user-images.githubusercontent.com/30832888/63367046-5ce83580-c351-11e9-9770-bd009780ab13.png)

### Baixando o Ruby para Windows

Entre no site [rubyinstaller.org](https://rubyinstaller.org/downloads/) e baixe a versão mais estável, o próprio site já indica qual a melhor versão. 
![image](https://user-images.githubusercontent.com/30832888/63367665-bd2ba700-c352-11e9-8d31-b5f4262f7a8b.png)

1. Após ter feito o download é muito importante que não tenha nenhum terminal aberto.
2. De um double clique no arquivo baixado, irá abrir a seguinte tela:
![image](https://user-images.githubusercontent.com/30832888/63369102-a63a8400-c355-11e9-9a7e-ed345ebbdf4c.png)
clique em aceitar e Next>
3. Em seguida clique em Install, sem modificar nada.
4. Novamente clique em Next>, irá começar a fazer a instalação.
5. Após instalado, desmarque a checkbox e clique em Finish.
![image](https://user-images.githubusercontent.com/30832888/63369571-9a9b8d00-c356-11e9-926a-6669f94692cb.png)
6. Abra o CMDER e verifique com o seguinte comando se o Ruby foi instalado.
```sh
ruby --version
```
a saida deve ser algo como:
![image](https://user-images.githubusercontent.com/30832888/63369885-53fa6280-c357-11e9-8e94-56ff463f14aa.png)

7. No CMDER ainda rode o comando:
```sh
ridk install
```
Deve ser apresentado
![image](https://user-images.githubusercontent.com/30832888/63370083-cb2ff680-c357-11e9-949c-ffd4eda8afbe.png)

8. Nesse momento tecle 3 e de enter, para escolher o pacote **_MSYS2 and MINGW development tollchain_**
9. Aguarde enquanto tudo seja instalado e tecle ENTER.
![image](https://user-images.githubusercontent.com/30832888/63370563-e3544580-c358-11e9-81ff-0da7a67090bb.png)

10. Rode o comando:
```sh
gem install bundler
```
Ele irá instalar a gem Bundler do ruby.
Feito isso, rode:
```sh
 bundler --version
```
É apresentado então a versão do Bundler.

### Ubuntu, Mint ou qualquer derivado do Debian Linux

Libs de DevKit
```sh
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```
Se você optou ZSH (Instalou o Oh My ZSH)
```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc

source ~/.zshrc

rbenv install 2.6.1
rbenv global 2.6.1

source ~/.zshrc
```

Se você optou pelo Bash (NÃO instalou o Oh My ZSH)
```sh
sudo apt-get install git
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

source ~/.bashrc

rbenv install 2.6.1
rbenv global 2.6.1

source ~/.bashrc
```

Fedora, CentOS ou derivados do Redhat
```sh
Libs de DevKit
sudo dnf install git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel
```

Se você optou ZSH (Instalou o Oh My ZSH)
```sh
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

source ~/.zshrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc

source ~/.zshrc

rbenv install 2.6.1
rbenv global 2.6.1

source ~/.zshrc
```

Se você optou pelo Bash (NÃO instalou o Oh My ZSH)
```sh
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.1
rbenv global 2.6.1
```

Para verificar se deu tudo certo, digite o comando:
```sh
$ ruby -v
```
Se deu certo, você deve ver a versão instalada

Instalando o Bundler
```sh
gem install bundler
```
Configurando Git
```sh
git config --global color.ui true
git config --global user.name "SEU NOME"
git config --global user.email "seu@email.com"
ssh-keygen -t rsa -b 4096 -C "seu@email.com"
```
