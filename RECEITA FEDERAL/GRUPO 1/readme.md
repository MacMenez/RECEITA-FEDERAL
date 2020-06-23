# Descrição do Modulo 1
Entrada de dados:

O modulo 1 consiste nas entradas de dados fornecidos pelo usuário, validando os dados de
entrada conforme o layout determinado pelo projeto, cada tipo de dado deve ser validado
conforme foi disposto no layout e gravado em memória para ser enviado ao final do processo
para o banco de dados

## Integração dos Módulos:

A integração deve utilizar os módulos conforme a sua usabilidade dentro do projeto.
O modulo 1 deve processar os dados no Modulo 3 e 4 e enviar o resultado ao Modulo 2 para que seja gravado os dados no banco de dados.
O modulo 1 deve disponibilizar maneiras de que os dados sejam transparentes para o modulo 5 utilizar para a geração dos relatórios necessários.

## Features:
Foram acrescentadas varias features para que melhorar a (UX) experiencia do usuário no ambiente gráfico disponibilizado pelo sistema VisualG, como por exemplo mensagens de alertas, visualização geral dos dados digitados, gráficos, etc..

## Equipe de Desenvolvimento:
- Fabricio Gomes (Desenvolvedor)
- Paulo Costa (Desenvolvedor)
- Janine Santos (Desenvolvedora, Designer)
- Luiz (Desenvolvedor)
- Gabriel Santos (Desenvolvedor)
- Tiago Augusto (Tester)
- Kevin (Desenvolvedor)

| work Item  | Data Inicio | Data de entrega |Status |
| --- |  :---: |  :---: | ---|
|1 |03/06/2020| 05/06/2020|Entregue|
|2 |03/06/2020| 05/06/2020| Entregue|
|3 |03/06/2020| 08/06/2020| Entregue|
|4 |03/06/2020| 08/06/2020| Entregue|
|5 |03/06/2020| 10/06/2020| Entregue|
|6 |03/06/2020| 10/06/2020| Entregue|
|7 |03/06/2020| 11/06/2020| Entregue|
|8 |09/06/2020| 15/06/2020| Entregue|
|9 |09/06/2020| 16/06/2020| Entregue|
|10 |09/06/2020| 16/06/2020| Entregue|
|11 |17/06/2020| 19/06/2020| Entregue Atrasada (22/06/2020) |

## Tarefas para Desenvolvimento
___
1- Processo de escolha de função: **Fabricio**

Esse processo deve executar uma função conforme escolha do usuário, será enviado uma variável do tipo inteiro e não será necessário retornar valor.
___
2- Processo de mensagem de alerta para usuário: **Kevin Faria**

 Esse processo deve executar uma mensagem no rodapé da tela informando uma mensagem que será enviada por parâmetro, com variável do tipo caracter 
___
3- Processo de validação de campo numérico: **Paulo Costa**

 Esse processo deve solicitar que o usuário informe um número maior que zero, caso não seja satisfeito deve utilizar o processo de mensagem (2) avisando que o campo deve ser preenchido, será enviado  uma variável com o nome do campo e uma variável com o espaçamento de digitação do valor, esse processo retorna um valor real com o valor que o usuário informou.
___
4- Processo de validação de campo alfabético:**Gabriel Santos**

Esse processo deve validar que seja informado somente dados A-Z, caso não seja satisfeito deve utilizar o processo de mensagem (2) avisando que o campo deve ser preenchido corretamente,  será enviado  uma variável com o nome do campo e uma variável com o espaçamento de digitação do valor, esse processo retorna um valor do tipo caracter com o valor que o usuário informou. 
___
5- Tela de menu do sistema: **Janine**

Será necessário uma tela com as opções que o usuário pode utilizar no sistema, esse processo não recebe parâmetro e retorna uma variável do tipo inteiro.
___
6- Vetor de opção **Fabricio**

Esse procedimento irá popular um vetor de opções do tipo caracter de uso global para a montagem do menu de opção.
___
7- Tela de boas vindas **Janine**

será desenhado um tela que ficará por 2 segundos na tela do usuário antes de iniciar o programa, explicando sobre o programa: Título, Curso, Matéria, etc.. 
___

8- Formatação de valores Monetário **Paulo Costa**

Esse processo deve receber um valor monetário em uma variável do tipo real e formatar em uma variável do tipo caractere retornando o valor formatado 
___

9- Validação de CPF **Fabricio**

Esse processo deve validar somente o tamanho de 11 caracteres e retorna o cpf formatado
___
10 - Percentual de alíquota **Luiz**

Esse processo deve somar todos os tipos de alíquotas disponíveis e gerar um vetor com o percentual de cada alíquota
___
11- Teste do Sistema **Tiago** 

Esse processo deve ser testar as entrada de dados e validando as saída, conforme layout disponibilizado no repositório do GitHub
