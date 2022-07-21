# Challenge - Sprint 5
Repositório criado para o Estágio de Automação em QA da [Compass.uol](https://compass.uol/).  
Estão presentes arquivos de Mapa Mental do E-Commerce AutomationPractice, criado com o intuito de direcionar a implementação da Automação de Testes, também estão presentes, além dos arquivos de automação de exemplos utilizados em aulas, todos os aquivos e códigos de Implementação de Automação de Testes do E-Commerce AutomationPractice, incluindo Gherkins.
Tudo aqui presente foi desenvolvido a partir dos conhecimentos adquiridos através das Master Classes e artigos disponibilizados pela [Compass.uol](https://compass.uol/).  

## Pré-Requisitos
* Git v.2.37.0
* Ruby v.3.1.2
* Rspec v.3.11.0
* Capybara v.3.37.1
* Cucumber v.8.0.0
* SitePrism v.3.7.3
* Selenium-WebDriver v.3.142.7
* ChromeDriver v.103.0.5060.53

## Instalação
* Git: Baixar o instalador da versão mais recente e respectiva ao seu Sistema Operacional através do [Site do Git](https://git-scm.com/download).
* Ruby: Baixar o instalador [Ruby+Devkit 3.1.2-1 (x64)](https://rubyinstaller.org/downloads/), ou a mais recente.  
  OBS: Se o seu Sistema Operacional for de 32 bits, você deverá fazer o Download da versão (x86).
* Gems: A instalação pode ser feita através do arquivo Gemfile.
  Dentro deste arquivo, deverá ter os seguintes códigos:
  > source 'http://rubygems.org'  
  >   
  > gem 'cucumber'  
  > gem 'capybara'  
  > gem 'site_prism'  
  > gem 'selenium-webdriver', '~> 3.142.7'  
  > gem 'rspec'  
  > gem 'pry'  
  > gem 'faker'  
  > gem 'i18n'  

  Após, deverá ser executado o seguinte comando no Terminal para instalar as Gems:
  > gem install rspec  

* Chromedriver: Você deverá fazer o [download](https://chromedriver.chromium.org/downloads) da versão do driver correspondente à versão do seu navegador.  
  Você também deverá executar os seguintes comandos no seu Terminal:  
  > npm config set strict-ssl false  
  > npm install -g chromedriver  

  E, após isso, você deverá extrair o zip do Chromedriver, e colocar o executável (.exe) dentro do diretório:
  > C:\Ruby25-x64\bin”

## Armazenamento e Versionamento
O Armazenamento e Versionamento dos arquivos presentes neste repositório foi realizada através do Git e GitHub.  
Você pode utilizar este repositório em seu computador através do comando:
> git clone https://github.com/MateusMiri/RealityStone_MateusMiri_Compass_Sprint05.git  

OBS: Este comando irá baixar os arquivos deste repositório, por isso, você deve abrir o seu Prompt de Comando na pasta em que você deseja efetuar este download.  

Além deste comando, outros comandos utilizados e que você também pode achar útil foram:
> git init - Para inicializar um repositório git local na pasta selecionada.  
> git remote add "<link_do_repositorio>" - Para sincronizar o seu repositório local com o repositório do GitHub desejado.  
> git add "<nome_do_arquivo>" - Para adicionar arquivos a serem versionados.  
> git commit -m "<nome_do_commit>" - Para criar uma versão dos arquivos selecionados.  
> git push origin main - Para enviar os Commits locais para o Repositório remoto do GitHub.  

# Automação de Testes
A Automação de Testes do E-commerce Automation Practice foi realizada cobrindo parte vital do E-commerce, que incluíram testes de:
* Login;  
* Cadastro;  
* Busca;  
* Pagamentos através de Cheque e Transferência Bancária, indo desde a página de produto até a finalização da compra;  
* Página do Produto: incluindo alteração de quantidade, cor, tamanho;
* Carrinho.
Além destes, outros testes tinham intuito de serem realizados, mas acabaram não sendo devido ao tempo disponível e atrasos que ocorreram a partir de algumas dificuldades.

## Execução
Todos os Cenários possuem a tag @regression, podendo serem executados juntos a qualquer momento, além de outras tags individuais de cada cenário, que podem ser observadas nos arquivos de Gherkin incluídos no projeto.  
Para executar os testes, pode-se utilizar do seguinte comando:  
> cucumber -p default -t@regression  

OBS: Para você conseguir executar os testes acima, você deve ter todos os Pré-Requisitos listados neste documento.  

## Conclusão
O E-commerce AutomationPractice se apresenta como sendo um E-commerce muito instável, sendo lento e ficando várias vezes indisponível durante o processo de testes.  
Os testes em si não mostraram ISSUEs dentro do site, porém, deve-se comentar de que ele não realiza qualquer tipo de validação entre a correlação das informações de endereço, a única validação que existe é de formato, por exemplo, zip-code deve ser em formato 00000. Mas não existe qualquer verificação se as informações ali postas são verdadeiras, o que gerará problemas no momento de entrega das compras.  


## Tecnologias Utilizadas
Para o desenvolvimento e implantação dos testes aqui presentes, foram utilizados;
* Git e GitHub;
* Visual Studio Code e suas extensões;
* Ruby;
* CMDER;
* Cucumber;
* Capybara;
* SitePrism;
* Selenium WebDriver;
* Rspec
* Pry;
* Faker;
* Prompt de Comando;
* Microsoft Teams;  
* Discord;  
* Miro;  
* Google Chrome;  
* Chromedriver.

## Autor
### Mateus Miri
[LinkedIn](https://www.linkedin.com/in/mateus-miri-0a3a81232/)  
[GitHub](https://github.com/MateusMiri)  
E-mail: mateusmiri19@gmail.com  
  
## Créditos e Documentação
[Git](https://git-scm.com/doc)  
[Ruby](https://www.ruby-lang.org/pt/documentation/)  
[RSpec](https://rspec.info/documentation/)  
[RSpec - Relish](https://relishapp.com/rspec/docs/)  
[Cucumber](https://github.com/cucumber/cucumber-ruby)  
[Capybara](https://github.com/teamcapybara/capybara)  
[SitePrism](https://github.com/site-prism/site_prism)  
[Pry](https://github.com/pry/pry)  
[Faker](https://github.com/faker-ruby/faker)  
[Selenium WebDriver](https://github.com/SeleniumHQ/selenium)  
[Chromedriver](https://chromedriver.chromium.org/downloads)  
[Compass.uol](https://compass.uol/)  

## Licença
[MIT](https://choosealicense.com/licenses/mit/) - Copyright © 2022 Mateus Miri  

## Agradecimentos
Agradeço à toda equipe Compass pelo apoio no compartilhamento e em todas as partes do processo do estágio e programa de bolsas.  
Agradeço, em especial, aos colegas Matheus Maschio, Luiza Tonatto e Daniel Merib pela ajuda e troca de conhecimentos durante a Sprint.  
Agradeço à toda turma do Programa de Bolsas, pela constante troca de ideias e ajuda durante o estágio.
