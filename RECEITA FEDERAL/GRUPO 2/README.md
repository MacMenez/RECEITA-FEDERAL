# ARMAZENAMENTO DE DADOS

## Contexto de Armazenamento de Dados
_______
Em softwares modernos a integração de dados e a disponibilidade deles é necessário, senão essencial, para a manipulação de dados dentro do funcionamento de um sistema de software. Baseado nestas necessidades de se armazenar dados, criou-se o conceito de **Banco de Dados**. 

## Funcionamneto do Banco de Dados na Programação
______
Um banco de dados armazena na memória do dispositivo os dados inseridos de maneira **“permanente”** ou **temporária**. Um armazenamento **“permanente”** manterá as informações armazenadas enquanto o sistema estiver instalado ou em funcionamento total, assim _caso ele seja encerrado ou o dispositivo desligado os dados permanecerão salvos_. Já os de maneira **temporária** funciona de maneira contrária, manterão as informações disponíveis em tempo real, ou seja, enquanto o software estiver _“ligado”_ ou em funcionamento, _assim ao finalizar ou encerrar o software as informações são perdidas_. 

Para fins acadêmicos foi utilizado a ***Linguagem de Português Estruturado (Portugol)*** a IDE (Ambiente de Desenvolvimento Integrado) denominada ***VisualG*** para se desenvolver o código correspondente ao projeto de software desenvolvido.

![Tela do VisualG](\_img-BD\tela_madeira1)

Devido a disponibilidade e opções que a linguagem e a IDE disponibilizam, foi pensado em um ***desenvolvimento de dados de maneira temporária*** (enquanto a IDE estiver em funcionamento). Está foi a melhor opção encontrada pela equipe para se desenvolver o banco de dados. 

Segundo a própria documentação da IDE disponível no [SITE OFICIAL](https://www.apoioinformatica.inf.br/produtos/item/07-nomes-de-variaveis-e-sua-declaracao), para se armazenar os dados de maneira temporária (única opção possível para o projeto), utilizaremos os códigos de ***VETOR*** e ***MATRIZ*** para desenvolver a função de armazenamento do projeto. Assim conseguiremos receber informações e deixá-las disponíveis para caso o usuário precise delas futuramente durante a execução do código.

Em _analogia_ ao aplicativo da empresa ***Microsoft, o Excel*** possui _linhas_ e _colunas_, onde nelas são armazenadas as informações necessárias e assim podemos formular os conceitos abaixo.

## VETOR
________
De maneira geral corresponde a uma ***coluna***. Um vetor consegue armazenar ***apenas 1 tipo de informação*** (INTEIRO, REAL, CARACTERE), nele o armazenamento será colocado conforme o VETOR for configurado(com quantidade de linhas onde ficará as informações).

``nomeVetor: VETOR [tamanhoVetor] DE TIPO ``

#### Os pontos destacados são:

***nomeVetor:*** corresponde ao nome dado a _“coluna”_ que será criada. Todas as informações inseridas serão identificadas pelo nome declarado no VETOR.   
***VETOR:*** declara que será _criado um vetor_ com o nome recebido anteriormente.   
***tamanhoVetor:*** O tamanho do vetor deve ser indicado perante a quantidade de informações que forem recebidas. O ***1° valor sempre é o 1***, após vem “***..***” (dois pontos de continuidade) e o valor máximo de informações a serem recebidas. No exemplo “***X***” é o número total de informação.

        nomeVetor: VETOR [1..X] DE  TIPO

***DE:*** irá fazer a associação das informações e as classificando em um tipo especificado a seguir.   
***TIPO:*** identifica quais informações serão armazenadas no VETOR. Podem ser ***INTEIRO, REAL*** ou ***CARACTERE***.
Desta forma o programador consegue configurar a maneira que será recebida a informação pelo usuário e como ela será armazenada durante o funcionamento do programa. Veja a aplicação no exemplo abaixo:

        NOMES: VETOR [1..5] DE CARACTERE

Para identificarmos determinada informação em um VETOR usamos a expressão abaixo:  
    ``nomeVetor[posição] <- valor``  
    ``Nome [1] <- Anônimo``


## MATRIZ
_____________________________ 
Seguindo a mesma analogia citada, ***uma matriz é responsável por armazenar vários VETORES*** em sua composição, comparada muitas vezes como uma "_tabela_". Uma MATRIZ _deve possuir o mesmo tipo de informação de um VETOR_, caso contrário o código apresentará **erros de sintaxe**. Uma MATRIZ é tem sua configuração da seguinte maneira:

    nomeMatriz: VETOR [tamanho1, tamanho2] DE TIPO

#### Os pontos destacados são:

***nomeMatriz:*** corresponde ao nome dado a “_tabela_” com os vários vetores que será criada. ***Todas as informações inseridas serão identificadas pelo nome declarado no VETOR que corresponde ao nome da MATRIZ***.  
***VETOR:*** declara que será criado um vetor com o nome recebido anteriormente, **o nome deste VETOR é diferente do declarado na opção de VETORES fora de MATRIZES**.    
***tamanhoMatriz:*** O tamanho do vetor deve ser indicado perante a quantidade de informações que forem recebidas. **O 1° valor sempre é o 1**, após vem “**..**” (dois pontos de continuidade) e o valor máximo de informações a serem recebidas. No exemplo “**X**” é o número total de informações, sendo os números a **ESQUERDA** da vírgula, a ***quantidade de VETORES*** e os valores a **DIREITA** da vírgula, a ***quantidade de informações que cada VETOR terá***.

        nomeMatriz: VETOR [1..X, 1..X] DE TIPO 

***DE:*** irá fazer a associação das informações e as classificando em um tipo especificado a seguir.  
***TIPO:*** identifica quais informações serão armazenadas no VETOR. Podem ser ***INTEIRO, REAL*** ou ***CARACTERE***.

Desta maneira o programa consegue agrupar várias informações de diferentes maneiras, assim a manipulação de dados recebe uma abrangência maior, se comparado ao VETOR ou comandos de execução. A MATRIZ armazena VETORES da seguinte maneira:

        PESSOAS: VETOR [1..2, 1..3] DE CARACTERE

Para identificarmos determinada informação em uma MATRIZ usamos a expressão abaixo:  

``nomeMatriz[posição 1, posição 2] <- valor``  
``Nome[1, 5] <- Endereço``

Com estas informações um programador já é capaz de simular um banco de dados utilizando VETORE e MATRIZES na Linguagem de Português Estruturado junto das opções disponíveis na IDE do VisualG

## REFERENCIAS EXTERNAS:
___________

[Site Oficial do VisualG](http://apoioinformatica.inf.br/produtos/visualg/)
  
[Pacote com 7 Apostilas Sobre VisualG](http://tinotec.com.br/blog/download-apostilas-visualg/)

[Apostila de Introdução a Lógica de Programação Usando Visualg](https://silo.tips/download/apostila-de-introduao-a-logica-de-programaao-usando-visualg-por-msc-jaqueline-so) 

[Algoritmos e Programação 2: Apostila completa sobre VisualG](https://www.passeidireto.com/arquivo/1896056/apostila-completa-sobre-visual-g)