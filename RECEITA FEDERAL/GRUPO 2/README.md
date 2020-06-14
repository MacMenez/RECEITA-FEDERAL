# OBJETIVO:
**Criar um Banco de Dados** em forma de **algoritmo de Português Estruturado** que, irá receber os valores de retorno dos demais grupos que possuem seus códigos já desenvolvidos. Iremos focar no código do **grupo 1 e grupo 5**. Até então o código deles é o mais completo e o que já possui maiores informações. **Portanto iremos começar montando o código para coletar as informações que ele irá nos enviar.** 

# ORGANIZAÇÃO:
**_Montaremos uma  MATRIZ para reliazar a captura de informações._**

O próprio grupo 1 que realizou a maior parte da documentação, criou ***"variaveis de referencias"*** para que quando formos escrever e unificar os códigos não haja problemas de leitura e identação de variáveis.

O link para identificarem essas referencias é este: [Padronização de Referência](https://github.com/MacMenez/RECEITA-FEDERAL/blob/master/Padronizacao.md).


Após nos adaptarmos as regras iremos continuar e iniciar as etapas montagem do código.

# ETAPAS
**_Montar vetores e matrizes_**

*_Vetor 1 [1..2] de caractere_*

**Armazena 1 tipo de informação(numéricos ou caracteres)**

Cada vetor possui seus parâmetros dentro dos [ ], onde **1 é obrigaoriamente o 1° numero a ser escrito** e os numeros após os .. é a quantidade de informação que será recebida.

*_Vetores funcionam da seguinte maneira:_*

Vetor 1 [1..2] de caractere

*_Vetor + nome + [quantidade de informação] + tipo_*


**_Matrizes funcionam da seguinte maneira:_**

Vetor 1 [1..2] de caractere

Vetor 2 [1..2] de caractere

Matriz [1..2, 1..2]

*_Matriz + 1° vetor + 2° vetor. TODOS SEPARADOS POR VÍRGULA ","_*

**_Ela irá fundir todos os vetores, segue as mesmas regras acima._**

# EXECUÇÃO

Somos no total 8 pessoas e estou pensando em dividir em duplas, onde cada uma ira desenvolver uma parte dos vetores ou das matrizes.

Até então pensei em uma única matriz, porém antes de desenvolvermos ela, iremos criar os vetores para receber as informações digitadas pelo usuario

1 matriz + vetores do grupo 1  
1 matriz + vetores do grupo 3  
1 matriz + vetores do grupo 4  
1 matriz + vetores do grupo 5

**_Escolhi fazer a divisão para não aglomerar muita gente na mesma coisa._**

Em relação a utilização do comando arquivo, após verificações e testes, foi identificado que elenão seria de grande ajua para o sistema, pois além de sobreescrever sobre as informações informadas, sua função é muito limitada e não permite utilizar certas demandas necessárias para o sistema.

# DEFINIÇÃO
Em qualquer tipo de sistema, a coleta de informações é de extrema importância, não só pelo fato de se armazenar informações, mas pelo fato de poder disponibilizá-la futuramente para leitura ou uso, caso necessário.

Para incrementação do projeto em desenvolvimento, foi selecionada uma equipe para projetar um sistema de armazenamento de dados na ligunguagem Português Estruturado. Um desafio onde as informações das demais equipes deverão ser minuciosamente estudadas e armazenadas dentro do código. 

Para melhor utilização da tecnologia, foram feitos vários estudos a respeito do desafio, onde será desenvolvido através da versatilidade da liguaguem e da API de desenvolvimento um estrutura de banco de dados.

Conseguiremos atender as soluções necessárias utilizando Matriz e Vetor, comandos e estruturas de armazenamento de informações que serão enviadas pelos demais códigos desenvolvido pelas outras equipes. 

## VETORES
Vetores geralmente são definicos como estruturas de armazenamento de informações. Com essa estrutura, conseguimos fazer a coleta das informações de uma pequena parte. 

Para se criar um Vetor, utilizamos o código:  

``VETOR nome: [Parametro 1..Parametro 2] DE TIPO``

**_Parametro 1:_** Corresponde a quantidade de colunas  
**_Parametro 2:_** Corresponde a quantidade de linhas.  

***VISUALIZAÇÃO***

``VETOR notas: [1..3] DE INTEIRO``  

| NOTA   | 
| :--:   | 
| NOTA 1 |
| NOTA 2 |
| NOTA 3 |


``VETOR boletim: [2..3] DE INTEIRO``

|  PROVA  |  TRABALHO  |
| :----:  | :--------: |
| PROVA 1 | TRABALHO 1 |
| PROVA 2 | TRABALHO 2 |
| PROVA 3 | TRABALHO 3 |

## MATRIZ
Matrizes, são vistas muitas vezes como uma fragmentadora de códigos. Para se criar Matrizes, utilizamos a mesma estrutura dos vetores, porém de maneira mais complexa, onde a Matriz irá fundir todos os Vetores em uma coisa só. 

Para se criar uma Matriz, utilizamos o código:

```VETOR nome: [Parametro 1..Parametro 2, Parametro 1.1..Parametro 2.1] DE TIPO```

        ***VISUALIZAÇÃO***

        VETOR nome: [Parametro 1..Parametro 2, Parametro 1.1..Parametro 2.1] DE TIPO

        |||

Uma estrutura padrão a ser vista utilizando Vetores sendo vinculados por Matrizes é como na seguinte estrutura:  

```v

//Códificação da Linguagem Portugol(Português Estruturado)

VETOR nome: [Parametro 1..Parametro 2] DE TIPO A

VETOR valor: [Parametro 1..Parametro 2] DE TIPO B

VETOR BancoDados: [Parametro 1..Parametro 2, Parametro 3..Parametro 4] DE TIPO AB

```

Desta forma temos uma estrutura de armazenamento de dados utilizando a linguagem Portugol.

Segundo a estrutura abaixo, podemos identificar como a integração é feita, utilizando a lógica de armazenamento e as estruturas que a linguagem nos permite.

![Fluxograma de Armazenamento](\_img-BD\...)

# EQUIPE DE DESENVOLVIMENTO

## Divisão de Tarefas

Para melhor desenvolvimento, dividimos a quipe em duplas que darão apoio e suporte uns aos outros, com o intuido de fazer com que o conhecimento seja mútuo. Para uma divisão justa, será utilizado um sorteador virtual para dividir as duplas. Cada dupla irá desenvolver uma parte do código que será unificado em um único código da equipe, este único que será unificado irá se juntar com as demais partes.

### DIVISÃO DAS DUPLAS

| DUPLA | DESENVOLVIMENTO | REFERÊNCIA |
| :---: | :-------------: | :--------: |
| | MATRIZ 1 | GRUPO 1
| | MATRIZ 3 | GRUPO 3
| | MATRIZ 4 | GRUPO 4
| | MATRIZ 5 | GRUPO 5


# REFERENCIAS EXTERNAS:

[Site Oficial do VisualG](http://apoioinformatica.inf.br/produtos/visualg/)
  
[Pacote com 7 Apostilas Sobre VisualG](http://tinotec.com.br/blog/download-apostilas-visualg/)

[Apostila de Introdução a Lógica de Programação Usando Visualg](https://silo.tips/download/apostila-de-introduao-a-logica-de-programaao-usando-visualg-por-msc-jaqueline-so) 

[Algoritmos e Programação 2: Apostila completa sobre VisualG](https://www.passeidireto.com/arquivo/1896056/apostila-completa-sobre-visual-g)