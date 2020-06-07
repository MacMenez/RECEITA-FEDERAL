Algoritmo "EntradaDadosReceitaFederal"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor   : André Augusto de Abreu Rodrigues
// Descrição   : Entrada de dados do sistema de Receita Federal de IRPF
// Autor(a)    :  Fabricio, Gabriel Santos, Janine, Kevin, Luiz, Paulo Costa, Tiago
// Data atual  : 02/06/2020
Var
   finalizarPrograma:logico
   cadastroPessoa:vetor [1..9] de caracter
   estadoCivil:vetor [1..4] de caracter

   //____________________________________________________________________

   //________________________Grupo_1_MODULO_1____________________________


Procedimento TelaAbertura
var
   _carregando:caracter
   _contador:inteiro
inicio
MudaCor("Azul","Fundos")
Escreval("":15, "                   ???      ")
Escreval("":15,"                   ???????     ")
Escreval("":15,"              ???? .???????.     ")
Escreval("":15,"          ???????    .????.        ")
Escreval("":15,"       ????????  ,,,,  ?? .??????    ")
Escreval("":15,"     ????????  ???????  .???????     ")
Escreval("":15,"    ?????  ???  ????? .????????     ")
Escreval("":15,"      ??  ??????? ''' .????????    ")
Escreval("":15,"         ??????????  ???????     ")
Escreval("":15,"           ??????????   ??      ")
Escreval("":15,"             ?????????        ")
Escreval("":15,"               ??????       ")
Escreval("":15,"                  ??       ")
Escreval("":5,"  _   _  _  _  _ ___         _  _  _   _  _              ")
Escreval("":5," |_) |_ /  |_  |  |   /\    |_ |_ | \ |_ |_)  /\   |     ")
Escreval("":5," | \ |_ \_ |_  |  |  /--\   |  |_ |_/ |_ | \ /--\  |_    ")
Escreval("","")

timer(200)
_carregando:=" * * * * * * * * * "
Escreva("":20,"Carregando")
Para _contador de 1 ate 15 faca
   Escreva(copia(_carregando;_contador,1))
Fimpara
timer(0)

MudaCor("Preto","Fundos")
FimProcedimento

Procedimento TelaMenu

inicio
   LimpaTela
   Escreval ("|============================================================|")
   Escreval ("|                - R E C E I T A   F E D E R A L  -          |")
   Escreval ("|                                                            |")
   Escreval ("|         _________________     ","    _________________        |")
   Escreval ("|        |                 |    ","   |                 |       |")
   Escreval ("|        |                 |    ","   |                 |       |")
   Escreval ("|        | ( 1 ) CADASTRO  |    ","   | ( 2 ) RELATÓRIO |       |")
   Escreval ("|        |                 |    ","   |                 |       |")
   Escreval ("|        |_________________|    ","   |_________________|       |")
   Escreval ("|         _________________     ","    _________________        |")
   Escreval ("|        |                 |    ","   |                 |       |")
   Escreval ("|        |                 |    ","   |                 |       |")
   Escreval ("|        |  ( 3 ) Sobre    |    ","   |  ( 4 )  SAIR    |       |")
   Escreval ("|        |                 |    ","   |                 |       |")
   Escreval ("|        |_________________|    ","   |_________________|       |")
   Escreval ("|                                                            |")
   Escreval ("|===========================================================|")

fimprocedimento

Procedimento TelaSobre
var
   _pausar:caracter
inicio
   LimpaTela
   Escreval("":1,"   ###'''''##    ____   _____   ____   _   ____    _____ ")
   Escreval("":1,"  ###  ##   ##  |  __| |  _  | | ___| | | | ___|  |  _  |")
   Escreval("":1," ###.########## | |_   | | | | | |    | | | |__   | | | |")
   Escreval("":1," ####     ##### |  _|  | |_| | | |    | | |__  |  | |_| |")
   Escreval("":1,"  ###  #######  | |    | | | | | |__  | |  __| |  | | | |")
   Escreval("":1,"   ##..######   |_|    |_| |_| |____| |_| |____|  |_| |_|")
   Escreval("")
   Escreval("":15,"TRABALHO DE LÓGICA DE PROGRAMAÇÃO")
   Escreval("":10," _                       __")
   Escreval("":10,"|_) _  _  _  o _|_ _    |_  _  _| _  __ _  |")
   Escreval("":10,"| \(/_(_ (/_ |  | (_|   |  (/_(_|(/_ | (_| |")
   Escreval("")
   Escreval("":10,"PROFESSOR : André Augusto de Abreu Rodrigues ")
   Escreval("":10,"CURSO     : ANÁLISE E DESENVOLVIMETNO DE SISTEMAS")
   Escreval("":10,"            ENGENHARIA DA COMPUTAÇÃO")
   Escreval("":20, "    2020 - 1º PERIODO")
   escreval(" ":10," Pressione Enter para continuar....":52)
   Leia(_pausar)

FimProcedimento

Procedimento TelaDadosCadastro
var
   _contador,_quantidadeCaracteres,_camposUmaLinha:inteiro
   _Cpf,_nome,_endereco,_estadoCivil,_numeroDependentes,_salarioBruto:caracter
   _salarioLiquido,_investimento,_despesas:caracter
   _conteudoCampo,_linha:caracter

   _camposTela:vetor [1..9] de caracter
   _tamanhocampo:vetor [1..9] de inteiro
inicio
   Para _contador de 1 ate 63 faca
      _linha:=_linha+"="
   FimPara

   _camposUmaLinha:=3

   _camposTela[1]:="CPF :"
   _camposTela[2]:="Nome :"
   _camposTela[3]:="Endereco :"
   _camposTela[4]:="Estado Civil :"
   _camposTela[5]:="Numeros de Dependentes :"
   _camposTela[6]:="Salario Bruto Anual :"
   _camposTela[7]:="Salario Liquido Anual :"
   _camposTela[8]:="Lucros em Investimento Anual :"
   _camposTela[9]:="Despesas Dedutiveis Anual :"

   _tamanhocampo[1]:=11
   _tamanhocampo[2]:=50
   _tamanhocampo[3]:=100
   _tamanhocampo[4]:=15
   _tamanhocampo[5]:=2
   _tamanhocampo[6]:=15
   _tamanhocampo[7]:=15
   _tamanhocampo[8]:=15
   _tamanhocampo[9]:=15

   limpatela
   Escreval(_linha)
   Escreval("":5,"CADASTRO DE DADOS DE I.R.P.F ANO-CALENDARIO 2019 ")
   Escreval(_linha)

   Para _contador de 1 ate 9 faca
      _conteudoCampo:=cadastroPessoa[_contador]
      _quantidadeCaracteres:=QuantidadeCaracter(_conteudoCampo)
      _quantidadeCaracteres:=_tamanhocampo[_contador]-_quantidadeCaracteres

      se _quantidadeCaracteres>0 entao
         _conteudoCampo:=PreencherComEspacos(_conteudoCampo,_quantidadeCaracteres)
      Fimse
      // quebra de linha para o campo endereco
      se _contador=3 entao
         Escreval(_camposTela[_contador],copia(_conteudoCampo;1,50))
         Escreval(copia(_conteudoCampo;51,49))
      senao
         Escreval(_camposTela[_contador],_conteudoCampo)
      fimse

   FimPara
   Escreval(_linha)

FimProcedimento

Procedimento TelaEntradaDados
var
   _contador:inteiro
   _entradaDados:vetor [1..9] de caracter
   _tipoDados:vetor [1..9] de inteiro

inicio
   // Tipo de dados 0- Cpf, 1 - numerico , 2 - Alfabetico
   //               3 - AlfaNumerico , 4 - tabela estado civil
   //                5 - Numerico não obrigatorio
   _tipoDados[1]:=0
   _tipoDados[2]:=2
   _tipoDados[3]:=3
   _tipoDados[4]:=4
   _tipoDados[5]:=5
   _tipoDados[6]:=1
   _tipoDados[7]:=1
   _tipoDados[8]:=5
   _tipoDados[9]:=1

   _entradaDados[1]:="o Documento Cpf"
   _entradaDados[2]:="o Nome Completo"
   _entradaDados[3]:="o Endereco Resumido"
   _entradaDados[4]:="o Estado Civil "
   _entradaDados[5]:="Numeros de Dependentes "
   _entradaDados[6]:="o Total Bruto do Salario Anual"
   _entradaDados[7]:="o Total Liquido do Salario Anual"
   _entradaDados[8]:="o Total de Lucros em Investimento Anual"
   _entradaDados[9]:="o Total de Despesas Dedutiveis Anual"

   Para _contador de 1 ate 9 faca
      escolha _tipoDados[_contador]
      caso 0
         cadastroPessoa[_contador]:=ValidarCampoCpf(_entradaDados[_contador],30)
      Caso 1
         cadastroPessoa[_contador]:=ValidarValorMonetario(_entradaDados[_contador],55)
      caso 2
         cadastroPessoa[_contador]:=ValidarCampoAlfabetico(_entradaDados[_contador],30)
      caso 3
         cadastroPessoa[_contador]:=ValidarCampoAlfaNumero(_entradaDados[_contador],30)
      caso 4
         cadastroPessoa[_contador]:=ValidarCampoEstadoCivil(_entradaDados[_contador],30)
      caso 5
         cadastroPessoa[_contador]:=ValidarCampoNumericoComZero(_entradaDados[_contador],40)
      FimEscolha
      TelaDadosCadastro
   FimPara

FimProcedimento

Procedimento InicializaVariaveis
var
inicio
   estadoCivil[1]:="CASADO"
   estadoCivil[2]:="SOLTEIRO"
   estadoCivil[3]:="DIVORCIADO"
   estadoCivil[4]:="VIUVO"

FimProcedimento


procedimento MensagemRodape(_tipoMensagem,_textoMensagem: caracter):caracter
var
   _linha:caracter
   _contador:inteiro
inicio
   Para _contador de 1 ate 60 faca
      _linha:=_linha+"="
   FimPara

   Escreval("|",_linha,"|")
   Escreval("|[",_tipoMensagem,"]":5,_textoMensagem,"|")
   Escreval("|",_linha,"|")
   timer(2000)
   timer(0)

FimProcedimento

Procedimento ExecutarFuncao
var
   _opcaoMenu:inteiro
inicio

   Escreva ("Digite a opção desejada: ")
   Leia (_opcaoMenu)

   Escolha _opcaoMenu
   Caso 1
      TelaEntradaDados
   Caso 2

   Caso 3
      TelaSobre
   Caso 4
      finalizarPrograma:=verdadeiro
   outrocaso
      MensagemRodape("Erro","Função encolhida não é valida")
   FimEscolha

Fimprocedimento

//________________________________Funções______________________________

Funcao ValidarCampoEstadoCivil(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _estadoCivil,_char,teste:caracter
   _contador:inteiro
   _estadoCivilValido:logico
inicio

   enquanto _estadoCivilValido=falso faca
      TelaDadosCadastro
      escreva("Informe "+_textoCampo+" :":_espacamento)
      leia(_estadoCivil)
      _estadoCivil:=Maiusc(_estadoCivil)
      _char:=copia(_estadoCivil;1,1)

      se _char="" entao
         escreval("|":15,"C-CASADO, S-SOLTEIRO, D-DIVORCIADO, V-VIUVO")
         MensagemRodape("Erro",_textoCampo)
      senao
         Para _contador de 1 ate 4 faca
            teste:=copia(estadoCivil[_contador];1,1)
            se copia(estadoCivil[_contador];1,1)=_char entao
               _estadoCivilValido:=verdadeiro
               interrompa
            fimse
         Fimpara
      fimse

   fimenquanto

   retorne estadoCivil[_contador]
FimFuncao

Funcao ValidarCampoNumericoComZero(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _campoNumerico:inteiro
inicio
   TelaDadosCadastro
   escreva("Informe "+_textoCampo:_espacamento)
   leia(_campoNumerico)

   retorne Numpcarac(_campoNumerico)
FimFuncao

Funcao ValidarCampoAlfaNumero(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _campoAlfabetico:caracter
inicio

   enquanto verdadeiro faca
      TelaDadosCadastro
      escreva("Informe "+_textoCampo:_espacamento)
      leia(_campoAlfabetico)
      se _campoAlfabetico = "" entao
         MensagemRodape("Erro",_textoCampo+"  maior que (Zero)0")
      senao
         interrompa
      Fimse
   fimenquanto

   retorne _campoAlfabetico

FimFuncao

Funcao ValidarValorMonetario(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _numero:inteiro
inicio
   TelaDadosCadastro
   escreva("Informe "+_textoCampo+" maior que (Zero)0: ":_espacamento)
   leia(_numero)
   enquanto _numero<=0 faca
      MensagemRodape("Erro",_textoCampo+"  maior que (Zero)0")
      TelaDadosCadastro
      escreval("Informe "+_textoCampo+" novamente o valor":_espacamento)
      leia(_numero)
   fimenquanto
   retorne Numpcarac(_numero)

FimFuncao

Funcao ValidarCampoAlfabetico(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _campoAlfabetico,_char:caractere
   _contador,_charAscii:inteiro
inicio

   enquanto verdadeiro faca
      TelaDadosCadastro
      Escreva("| Informe "+_textoCampo+" :":_espacamento)
      leia(_campoAlfabetico)

      se _campoAlfabetico <> "" entao

         _campoAlfabetico:=Maiusc(_campoAlfabetico)

         Para _contador de 1 ate 100 faca
            _char:=copia(_campoAlfabetico;_contador,1)

            se _char="" entao
               interrompa
            fimse

            _charAscii:=Asc(_char)

            se ((_charAscii<65) ou (_charAscii>90)) e (_charAscii <> 32) entao
               MensagemRodape("Erro",_textoCampo+" deve ter somente caracteres alfabeticos")
               _campoAlfabetico:=""
               interrompa
            fimse

         Fimpara
      senao
         MensagemRodape("Erro",_textoCampo+" deve ter somente caracteres alfabeticos")
      fimse

      se _campoAlfabetico <> "" entao
         interrompa
      fimse

   Fimenquanto

   retorne _campoAlfabetico

FimFuncao

Funcao ValidarCampoCpf(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _cpfValido:inteiro
   _cpf:real
   _cpfFormatado:caracter
inicio

   Enquanto verdadeiro faca
      TelaDadosCadastro
      Escreva("| Informe "+_textoCampo+" :":_espacamento)
      leia(_cpf)
      se _cpf =0 entao
         MensagemRodape("Erro",_textoCampo+" não é valida")
      senao
         _cpfValido:=QuantidadeCaracter(Numpcarac(_cpf))
         se _cpfValido <> 11 entao
            MensagemRodape("Erro",_textoCampo+" não é valida")
         senao
            interrompa
         Fimse
      fimse
   fimenquanto

   _cpfFormatado:=Numpcarac(_cpf)
   _cpfFormatado:=Copia(_cpfFormatado;1,3)+"."+Copia(_cpfFormatado;4,3)+"."+Copia(_cpfFormatado;7,3)+"-"+Copia(_cpfFormatado;10,2)
   retorne _cpfFormatado

FimFuncao

Funcao PreencherComEspacos(_conteudo:caracter;_espacos:inteiro):caracter
var
   _contador:inteiro
Inicio
   Para _contador de 1 ate _espacos faca
      _conteudo:=_conteudo+" "
   Fimpara

   retorne _conteudo
FimFuncao

Funcao QuantidadeCaracter(_conteudo:caracter):inteiro
var
   _quantidadeCaracteres:inteiro
inicio
   _quantidadeCaracteres:=1

   Enquanto verdadeiro faca
      se Copia(_conteudo;_quantidadeCaracteres,1)="" entao
         interrompa
      Fimse
      _quantidadeCaracteres:=_quantidadeCaracteres+1
   FimEnquanto

   _quantidadeCaracteres:=_quantidadeCaracteres-1

   retorne _quantidadeCaracteres

Fimfuncao


//____________________________________________________________________

Inicio
   InicializaVariaveis
   //TelaAbertura


   Enquanto finalizarPrograma=falso faca
      TelaMenu
      ExecutarFuncao
      LimpaTela
   FimEnquanto





Fimalgoritmo
