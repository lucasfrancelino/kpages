## Automação com Ruby,Cucumber e Selenium WebDriver

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

No CMDER ainda rode o comando:
```sh
ridk install
```
Deve ser apresentado
