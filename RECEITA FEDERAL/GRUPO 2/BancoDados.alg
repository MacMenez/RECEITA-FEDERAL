Algoritmo "BANCO DE DADOS - RECEITA FEDERAL"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : André Rodrigues
// Descrição   : Desenvolver um código de Armazenamento de Dados .alg
// Autor(a)    : Alisson, Amilton, Davi, Gabriel A., Gabriel V., Lucas M.
// Data atual  : 02/06/2020

//*****************************************************************************

Algoritmo "BANCO DE DADOS - RECEITA FEDERAL"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : André Rodrigues
// Descrição   : Banco de Dados + Funções Internas do Banco 
// Autor(a)    : Alisson, Amilton, Davi, Gabriel A., Gabriel V., Lucas M.
// Data atual  : 20/06/2020

//*****************************************************************************

Algoritmo "BANCO DE DADOS - RECEITA FEDERAL"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : André Rodrigues
// Descrição   : Juntar todas as funções do desenvolvidas
// Autor(a)    : Alisson, Amilton, Davi, Gabriel A., Gabriel V., Lucas M.
// Data atual  : 21/06/2020
Var
// Seção de Declarações das variáveis
   Dados: VETOR [1..13] DE CARACTERE //Vetor com os dados dos usuários
   BancoDados: VETOR [1..100, 1..13] DE CARACTERE //MAtriz com todas as informações
   contador, indice: INTEIRO //Irá ajudar a identificar o usuário pelo CPF
   X: CARACTERE //Irá ser a variável que receberá o dados que o usuário quer pesquisar
   _respostaUser: INTEIRO //Interção do usuário
// Fim Seção de Declarações das variáveis


//____________________ÁREA_DE_PESQUISA_DE_DADOS________________________
   //Pesquisará por todos os dados cadastrados, usando a informação inserida nos campos(Recomendado usar CPF)
    
   //Fará uma varredura por todos os dados cadastrados
      Funcao Pesquisar(_dadosCampo: CARACTERE;_indiceCampo:inteiro): INTEIRO 
         Var
            _contador,_indice: inteiro
         Inicio
            PARA _contador de 1 ATE 100 FACA //Irá localizar o usuário pelo CPF
               SE BancoDados [_contador,_indiceCampo] = _dadosCampo ENTAO
                  _indice := _contador//Indice irá identificar o vetor.
                  Interrompa
               FIMSE
            FIMPARA
            Retorne _indice
      FimFuncao
   //Grava as informações na matriz principal e apaga o vetor dados para deixá-lo disponivel.
      Procedimento GravarDados()
         var
            _indiceLivre,_contador:inteiro
         inicio
            PARA _contador de 1 ate 100 FACA
               SE BancoDados[_contador,1]="" ENTAO
                  _indiceLivre:=_contador
                  Interrompa
               FIMSE
            FIMPARA

            PARA _contador de 1 ate 13 FACA
               BancoDados[_indiceLivre,_contador]:=Dados[_contador]
               Dados[_contador]:=""
            FIMPARA
      Fimprocedimento
   //Resgata as informações do usuário no vetor selecionado.
      Procedimento RecuperarDados(_indice:inteiro)
         var
            _contador:inteiro
         inicio
            PARA _contador de 1 ate 13 FACA
               Dados[_contador]:=BancoDados[_indice,_contador]
            FIMPARA
      FimProcedimento
//____________________FIM_ÁREA_DE_PESQUISA_DE_DADOS____________________

//____________________ÁREA_PARA_EXCLUIR_DADOS__________________________
   ESCREVA(" ______                                 _                      _")
   ESCREVA("|  ____|                               | |                    | |")
   ESCREVA("| |__ _   _ _ __   ___ __ _  ___     __| | ___    _____  _____| |_   _ ___  __ _  ___")
   ESCREVA("|  __| | | | '_ \ / __/ _` |/ _ \   / _` |/ _ \  / _ \ \/ / __| | | | / __|/ _` |/ _ \")
   ESCREVA("| |  | |_| | | | | (_| (_| | (_) | | (_| |  __/ |  __/>  < (__| | |_| \__ \ (_| | (_) |")
   ESCREVA("|_|   \__,_|_| |_|\___\__,_|\___/   \__,_|\___|  \___/_/\_\___|_|\__,_|___/\__,_|\___/")
   ESCREVA("")

   Procedimento Excluir(_indice:INTEIRO):INTEIRO
      var
         _contador,_contador1:INTEIRO
      inicio
         PARA _contador de 1 ate 13 FACA
            BancoDados[_indice,_contador]:=""
         FIMPARA

         PARA _contador de _indice ate 100 FACA
            PARA _contador1 de 1 ate 13 FACA
               BancoDados[_contador,_contador1]:=BancoDados[(_contador+1),_contador1]
               BancoDados[(_contador+1),_contador1]:=""
            FIMPARA

            SE BancoDados[_contador,1]="" ENTAO
               interrompa
            FIMSE
         FIMPARA
         ESCREVA(" ")
         ESCREVA(" ")
         ESCREVA(" ")
         ESCREVA(" ")
         ESCREVAL("==== USUÁRIO EXCLUÍDO COM SUCESSO! ====")
   FimProcedimento
//____________________FIM_ÁREA_PARA_EXCLUIR_DADOS______________________

//____________________ÁREA_PARA_ALTERAR_DADOS__________________________
//____________________FIM_ÁREA_PARA_ALTERA_DADOS_______________________

//____________________ÁREA_PARA_GERAR_RECIBO___________________________
   Procedimento Recibo()
      Inicio
         ESCREVA("Para gerarmos seu recibo, digite seu CPF novamente: ") 
         indice:=Pesquisar(X,1) //Caso tenha sido alterado irá buscar os dados novamente. Irá evitar erros de leitura também.

         Limpatela
         ESCREVAL ("===================================================================")
         ESCREVAL ("Minitério da Fazenda             Imposto - Pessoa Física")
         ESCREVAL ("Secretaria da Receita            Excercício 2020")
         ESCREVAL ("Federal do Brasil                Ano-Calendário 2014")
         ESCREVAL ("===================================================================")
         ESCREVAL ("======================== Recibo da IRPF/2020 ======================")
         ESCREVAL ("===================================================================")

         ESCREVA ("Sr(a) ", Dados[1], ", inscrito no CPF de Nº ", Dados[2], ", residente no enderço ,",(Dados[3]))

         ESCREVAL("Declaro possuir: ")
         ESCREVAL(" ")

         ESCREVAL("Nº de dependentes :",(Dados[5]) )

         ESCREVAL(" ")
         ESCREVAL("Salário bruto: ", (Dados[6]))

         ESCREVAL(" ")
         ESCREVAL("Imposto retido: ", (Dados[7]))

         ESCREVAL(" ")
         ESCREVAL("Total de Despesas: ", (Dados[8]))

         ESCREVAL(" ")
         ESCREVAL("Total de investimento: ", (Dados[9]))

         ESCREVAL(" ")
            
         ESCREVAL("===================================================================")

         ESCREVAL("CÓDIGO DE DE ACESSO: ")
         aleatorio 1000000,9999999
         LEIA(ale)
         aleatorio off

         ESCREVAL("Este número é de uso pessoal e NÃO deve ser fornecido a terceiros")
         ESCREVAL("===================================================================")
   FimProcedimento
//____________________FIM_ÁREA_PARA_GERAR_RECIBO_______________________

//____________________FORMATAÇÃO_DE_DADOS_INSERIDOS____________________
   Procedimento MostraTela()
      Inicio
         LIMPATELA
         ESCREVAL ("Sr(a) ", Dados[1], ", inscrito no CPF de Nº ", Dados[2], ", residente no enderço ,",(Dados[3]))
      ESCREVAL ("Declaro possuir: ")
      ESCREVAL(" ")

      ESCREVAL("Nº de dependentes :",(Dados[5]) )

      ESCREVAL(" ")
      ESCREVAL ("Salário bruto: ", (Dados[6]))

      ESCREVAL(" ")
      ESCREVAL("Imposto retido: ", (Dados[7]))

      ESCREVAL(" ")
      ESCREVAL("Total de Despesas: ", (Dados[8]))

      ESCREVAL(" ")
      ESCREVAL ("Total de investimento: ", (Dados[9]))
   FimProcedimento
//____________________FIM_FORMATAÇÃO_DE_DADOS_INSERIDOS________________

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   GravarDados()

   ESCREVAL("Qual meio de pesquisa quer realizar: ")
   ESCREVAL("1 - CPF":20, "2 - NOME":20, "3 - N° DEPENDENTES", "4 - VISUALIZAR DADOS DISPONÍVEIS")
   LEIA(_respostaUser)

   ESCOLHA _respostaUser
   Caso 1
      ESCREVAL("AVISO: Para CPF confira os números antes de enviar!")
      ESCREVA("")
      ESCREVA("Digite o CPF: ")
      LEIA(X)
      indice:=Pesquisar(X,1)
   Caso 2
      ESCREVAL("AVISO: Para pesquisar por NOME, deve-se colocar o mesmo nome que será impresso no recibo comtodas as informações completas!")
      ESCREVA("")
      ESCREVA("Digite o Nome Completo: ")
      LEIA(X)
      Maiusc (X : caracter) : caracter
      indice:=Pesquisar(X,2)
   Caso 3
      ESCREVAL("AVISO:Para N° DE DEPENDENTES será mostrado o 1° usuário que possuir esta informação!")
      ESCREVA("")
      ESCREVA("Digite o N° de Dependentes: ")
      LEIA(X)
      indice:=Pesquisar(X,5)
   FIMESCOLHA

   //COLOCAR A CONDIÇÃO SE para verificar vetor selecionado.
   //Usar para reescrever os dados.
   SE indice > 0 ENTAO
      RecuperarDados(indice)
   FIMSE

   PARA contador de 1 ate 13 FACA
      ESCREVAL(Dados[contador])
   FIMPARA

   MostraTela() //Irá mostrar as informações digitadas de maneira formatada.

   //Irá fazer chamdos para alterar os dados
   ESCREVAL("O que deseja fazer com esta informação?")
   ESCREVA("")
   ESCREVAL("1 - ALTERAR":20, "2 - EXCLUIR":20, "3 - RECIBO")
   LEIA(_respostaUser)

   ESCOLHA  _respostaUser
   CASO 1
      indice:=Pesquisar(X,1)
      AlteraDados() //Ainda em desenvolvimento
   CASO 2
      indice:=Pesquisar(X,1)
      Excluir() //Ainda em desenvolvimento
   CASO 3
      indice:=Pesquisar(X,1)
      Recibo() //Ainda em desenvolvimento
   FIMESCOLHA
Fimalgoritmo
//************************************************************************************************************


//PARA REALIZAR TESTES UTILIZE OS EXEMPLOS ABAIXO
//____________________ÁREA_PARA_INSERIR_DADOS_NA_MATRIZ________________
   Procedimento dadosUsuario
      Inicio
         Dados[1] := "123.456.789-00"
         Dados[2] := "ANONIMO"
         Dados[3] := "RUA NÃO EXISTE"
         Dados[4] := "LIVRE DE SOGRA"
         Dados[5] := "1"
         Dados[6] := "R$1.300 BRUTO"
         Dados[7] := "R$13.000 LIQUISO"
         Dados[8] := "R$5.000 LUCRO"
         Dados[9] := "R$4.000 DESPESAS"
         Dados[10] := "VALOR 0"
         Dados[11] := "VALOR 0"
         Dados[12] := "VALOR 0"
         Dados[13] := "VALOR 0"
   FimProcedimento

   Procedimento dadosUsuario1()
      Inicio
         Dados[1] := "255.255.255-00"
         Dados[2] := "MARIA"
         Dados[3] := "RUA NÃO EXISTE"
         Dados[4] := "LIVRE DE SOGRA"
         Dados[5] := "4"
         Dados[6] := "R$1.300 BRUTO"
         Dados[7] := "R$13.000 LIQUISO"
         Dados[8] := "R$5.000 LUCRO"
         Dados[9] := "R$4.000 DESPESAS"
         Dados[10] := "VALOR 0"
         Dados[11] := "VALOR 0"
         Dados[12] := "VALOR 0"
         Dados[13] := "VALOR 0"
   FimProcedimento

   Procedimento dadosUsuario2()
      Inicio
         Dados[1] := "987.654.321-00"
         Dados[2] := "JOSE"
         Dados[3] := "RUA NÃO EXISTE"
         Dados[4] := "LIVRE DE SOGRA"
         Dados[5] := "3"
         Dados[6] := "R$1.300 BRUTO"
         Dados[7] := "R$13.000 LIQUISO"
         Dados[8] := "R$5.000 LUCRO"
         Dados[9] := "R$4.000 DESPESAS"
         Dados[10] := "VALOR 0"
         Dados[11] := "VALOR 0"
         Dados[12] := "VALOR 0"
         Dados[13] := "VALOR 0"
   FimProcedimento
//____________________FIM_ÁREA_PARA_INSERIR_DADOS_NA_MATRIZ____________

dadosUsuario() //ACRESCENTAR NA SEÇÃO DE COMANDO
dadosUsuario1() //ACRESCENTAR NA SEÇÃO DE COMANDO
dadosUsuario2() //ACRESCENTAR NA SEÇÃO DE COMANDO


         ESCREVAL("Os dados referentes a pesquisa feita são: ")
         ESCREVAL("")
         ESCREVAL("")
         ESCREVAL("Nome: ", Dados[1])
         ESCREVAL("")
         ESCREVAL("CPF: ", Dados[2])
         ESCREVAL("")
         ESCREVAL ("Endereço: ", Dados[3])
         ESCREVAL("")
         ESCREVAL("Estado Civil: ", Dados[4])
         ESCREVAL("")
         ESCREVAL("Nº de dependentes: ", Dados[5])
         ESCREVAL("")
         ESCREVAL("Total Salário Bruto: ", Dados[6])
         ESCREVAL("")
         ESCREVAL("Total Imposto Retido: ", Dados[7])
         ESCREVAL("")
         ESCREVAL("Total Despesas: ", Dados[8])
         ESCREVAL("")
         ESCREVAL("Total Investimento: ", Dados[9])
