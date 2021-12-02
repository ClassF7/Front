# Front-T3T4

# Projeto

Trata-se de uma aplicação do kit de desenvolvimento Flutter para a criação de um site de review de filmes. 
## Requisitos

Flutter 2.5.3 • channel stable • https://github.com/flutter/flutter.git <br />
Framework • revision 18116933e7 (7 weeks ago) • 2021-10-15 10:46:35 -0700 <br />
Engine • revision d3ea636dc5 <br />
Tools • Dart 2.14.4 <br />
JDK • openjdk-16 versão 16.0.2


# Utilização

1. Baixar o Flutter, seguindo as instruções em sua [Documentação](https://docs.flutter.dev/get-started/install)
2. Clonar o repositório contendo a implementação do Front-End para sua máquina local
3. Iniciar o Back-End do projeto, disponível no [GitHub do trabalho](https://github.com/TrabalhosECM251/Back-T3T4)
4. Iniciar o Front-End executando o arquivo ```lib\main.dart```

Dessa forma, a tela inicial do site deverá ser aberta.

# Interface e Experiência do usuário

A tela inicial (home page) deve ser

![image](documentacao-imgs\home_page.png)

Para entrar no sistema de reviews de filmes, clique no botão **Entrar**, que o levará para a página de login de usuário:

![image](documentacao-imgs\tela_login.png)

onde o único usuário válido é **Email**: ``murilo`` e **Senha**: ``professor``.

Feito o login, o usuário entra no sistema de reviews de filmes. É apresentado uma tela scrollavel verticalmente, contendo todo o catálogo de filmes disponíveis, a partir do banco de dados. O usuário pode clicar em qualquer filme de interesse e, assim, ser direcionado a uma página detalhada do filme escolhido, e clicar no botão **Sair**, onde será redirecionado para a página de login. 

![image](documentacao-imgs\tela_filmes.png)

Se o usuário optar por clicar em algum filme, a tela de review do filme será mostrada. Aqui, o usuário pode ler informações técnicas e os reviews de outros usuários sobre o filme. Além disso, ele pode deixar sua própria review: basta escrever seu comentário no campo de texto, determinar uma quantidade de estrelas, de 1 a 5, que generaliza sua experiência com o filme, e clica em **Enviar**. Dessa forma, sua review será armazenada no banco de dados criado, a página será recarregada e sua review será mostrada junto às demais. 

![image](documentacao-imgs\review_filme.png)

O design de cada página foi desenvolvido e disponibilizado no [Figma do projeto](https://www.figma.com/file/luRWxk70HS7rUSxm6fGE8g/Porjeto-Muliru?node-id=0%3A286)

# Arquitetura do projeto

Foi utilizado o padrão MVC (Model-View-Controller) como padrão de projeto, assim como o uso de MobX para o gerenciamento de estados no Flutter, baseado neste [artigo do Medium](https://medium.com/flutter-comunidade-br/flutter-com-mobx-c0f4762fbd1a).

### Estrutura de arquivos:

    -lib/
        |-app/
            |-models/ : definição de Filme, Review e Login de Usuário
            |-modules/
                |-filmes/ : manueio de dados relacionados aos filmes
                |-home/ : página inicial
                |-network/ : configurações da requisição para o Back-End
                |-reviews/ : manueio de dados relacionados aos reviews
                |-widgets/ : widgets de auxílio

            |-shared/themes : configurações globais de cores.
        
