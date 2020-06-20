Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : André Rodrigues
// Descrição   : Desenvolver um código de Armazenamento de Dados .alg
// Autor(a)    : Alisson, Amilton, Davi, Gabriel A., Gabriel V., Lucas
// Data atual  : 02/06/2020

*****************************************************************************

Algoritmo "BANCO DE DADOS - RECEITA FEDERAL"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Banco de Dados + Funções Internas do Banco 
// Autor(a)    : Alisson, Amilton, Davi, Gabriel A., Gabriel V., Lucas M.
// Data atual  : 20/06/2020

Var
// Seção de Declarações das variáveis
   Dados: VETOR [1..13] DE CARACTERE //Vetor com os dados dos usuários
   BancoDados: VETOR [1..100, 1..13] DE CARACTERE //MAtriz com todas as informações
   contador, indice: INTEIRO //Irá ajudar a identificar o usuário pelo CPF
// Fim Seção de Declarações das variáveis

//____________________ÁREA_DE_PESQUISA_DE_DADOS____________________

//Pesquisará por todos os dados cadastrados, usando a informação inserida nos campos(Recomendado usar CPF)
Funcao Pesquisar(_dadosCampo: CARACTERE;_indiceCampo:INTEIRO): INTEIRO 

Var
   _contador,_indice: INTEIRO
Inicio

   PARA _contador de 1 ATE 100 FACA //Irá localizar o usuário pelo CPF
        SE BancoDados [_contador,_indiceCampo] = _dadosCampo ENTAO
            _indice := _contador //Indice irá identificar o vetor.

            Interrompa
        FIMSE
   FIMPARA
   Retorne _indice
FimFuncao

Procedimento GravarDados
var
   _indiceLivre,_contador:INTEIRO
inicio
   PARA _contador de 1 ate 100 FACA
        SE BancoDados[_contador,1]="" ENTAO
            _indiceLivre:=_contador
            Interrompa
        FIMSE
   FIMPARA

   PARA _contador de 1 ate 13 faca
      BancoDados[_indiceLivre,_contador] := Dados[_contador]
      Dados[_contador]:=""
    FIMPARA

Fimprocedimento

//Resgata as informações do usuário para ter acesso a elas
Procedimento RecuperarDados(_indice:inteiro)
var
   _contador:inteiro
inicio

    PARA _contador de 1 ate 13 FACA
        Dados[_contador] := BancoDados[_indice,_contador]
    FIMPARA

FimProcedimento

//____________________FIM_ÁREA_DE_PESQUISA_DE_DADOS____________________

//____________________ÁREA_PARA_EXCLUIR_DADOS________________________
//____________________FIM_ÁREA_PARA_EXCLUIR_DADOS____________________

//____________________ÁREA_PARA_ALTERAR_DADOS________________________
//____________________FIM_ÁREA_PARA_ALTERA_DADOS_____________________

//____________________ÁREA_PARA_GERAR_RECIBO________________________
//____________________FIM_ÁREA_PARA_GERAR_RECIBO____________________


//************************************************************************************************************
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   GravarDados()

   indice:=Pesquisar("",) //ENTRE "" DIGITE A INFORMAÇÃO. Após a "," digite o campo desejado.
   
    SE indice > 0 ENTAO
        RecuperarDados(indice)
    FIMSE

    PARA contador de 1 ate 13 faca
        ESCREVAL(Dados[contador])
    FIMPARA

Fimalgoritmo
//************************************************************************************************************


PARA REALIZAR TESTES UTILIZE OS EXEMPLOS ABAIXO
//************************************************************************************************************
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

dadosUsuario() //ACRESCENTAR NA SEÇÃO DE COMANDO

Procedimento dadosUsuario1
Inicio
   Dados[1] := "987.654.321-00"
   Dados[2] := "MARIA"
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

dadosUsuario1() //ACRESCENTAR NA SEÇÃO DE COMANDO
//***************************************************************