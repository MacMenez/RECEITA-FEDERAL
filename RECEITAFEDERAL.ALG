Algoritmo "ReceitaFederal"
//
//           TRABALHO DE LÓGICA DE PROGRAMAÇÃO
// Descrição: Sistema de calculo de tributos de Imposto de Renda Pessoa Fisica
// Curso    : Nome do(a) aluno(a)
// Professor: André Augusto de Abreu Rodrigues
// Curso: Analise e Desenvolvimento de Sistema e Eng. da Computação
// Periodo: 2020/1
// Data atual  : 03/06/2020
// ===================================================================
//                        ATENÇÃO
// ===================================================================
// Consulte a Documentação disponibilizada no GitHub :
//        github.com/MacMenez/RECEITA-FEDERAL
// -------------------------------------------------------------------
Var
   finalizarPrograma:logico

   // Estrutura do vetor cadastroPessoa:
   // 1 - CPF, 2 - Nome, 3 - Endereco, 4 - Estado civil
   // 5 - Numeros de Dependentes, 6 - Salario Bruto, 7 - Salario Liquido
   // 8 - Investimento, 9 - Despesas, 10 - Classificacao, 11- imposto devido
   cadastroPessoa:vetor [1..11] de caracter

   // Estrutura vetor estadoCivil:
   // 1 - CASADO, 2 - SOLTEIRO, 3 - DIVORCIADO, 4 - VIUVO
   estadoCivil:vetor [1..4] de caracter

   // Utilizada na construção de tela
   linha:caracter
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

timer 200 on
_carregando:=" * * * * * * * * * "
Escreva("":20,"Carregando")
Para _contador de 1 ate 15 faca
   Escreva(copia(_carregando;_contador,1))
Fimpara
timer 0 off

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
   _conteudoCampo:caracter

   _camposTela:vetor [1..9] de caracter
   _tamanhocampo:vetor [1..9] de inteiro
inicio

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
   Escreval(linha)
   Escreval("":5,"CADASTRO DE DADOS DE I.R.P.F ANO-CALENDARIO 2019 ")
   Escreval(linha)

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
   Escreval(linha)



FimProcedimento

Procedimento TelaEntradaDados
var
   _contador:inteiro
   _entradaDados:vetor [1..9] de caracter
   _tipoDados:vetor [1..9] de inteiro

inicio
   // Tipo de dados 0- Cpf, 1 - numerico , 2 - Alfabetico
   //               3 - AlfaNumerico , 4 - tabela estado civil
   //               5 - Numerico não obrigatorio
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
   _entradaDados[6]:="o Salario Bruto Anual"
   _entradaDados[7]:="o Slario Liquido Anual"
   _entradaDados[8]:="o Lucros em Investimento Anual"
   _entradaDados[9]:="o Despesas Dedutiveis Anual"

   Para _contador de 1 ate 9 faca
      escolha _tipoDados[_contador]
      caso 0
         cadastroPessoa[_contador]:=ValidarCampoCpf(_entradaDados[_contador],30)
         //Verificar se contribuinte já existe no banco de dados

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

   // Modulo 4
   ClssificarContribuinte

   // Modulo 3
   ProcessarDeclaracao


FimProcedimento

Procedimento InicializarVariaveisGlobais
var
_contador:inteiro
inicio
   estadoCivil[1]:="CASADO"
   estadoCivil[2]:="SOLTEIRO"
   estadoCivil[3]:="DIVORCIADO"
   estadoCivil[4]:="VIUVO"
   
    Para _contador de 1 ate 62 faca
      linha:=linha+"="
   FimPara


FimProcedimento

procedimento MensagemRodape(_tipoMensagem,_textoMensagem: caracter):caracter
var
inicio

   Escreval("|",linha,"|")
   Escreval("|[",_tipoMensagem,"]":5,_textoMensagem,"|")
   Escreval("|",linha,"|")
   timer 2000 on
   timer 0 off

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
      TelaRelatorio
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
   _iniciarTela:logico
inicio

   enquanto _estadoCivilValido=falso faca
      se _iniciarTela=verdadeiro entao
         TelaDadosCadastro
      Fimse
      _iniciarTela:=verdadeiro

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
   escreva("Informe "+_textoCampo+" :":_espacamento)
   leia(_campoNumerico)

   retorne Numpcarac(_campoNumerico)
FimFuncao

Funcao ValidarCampoAlfaNumero(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _campoAlfabetico:caracter
   _iniciarTela:logico
inicio

   enquanto verdadeiro faca
      se _iniciarTela=verdadeiro entao
         TelaDadosCadastro
      Fimse
      _iniciarTela:=verdadeiro

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
   _iniciarTela:logico
inicio

   enquanto verdadeiro faca
      se _iniciarTela=verdadeiro entao
         TelaDadosCadastro
      Fimse
      _iniciarTela:=verdadeiro
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

//________________________Grupo_2_MODULO_2____________________________

Procedimento GravarDadosContribuinte
var
Inicio

FimProcedimento

Funcao ExcluirDadosContribuinte(_cpf:caracter):logico
var
Inicio

FimFuncao

Funcao PesquisarContribuinte(_cpf:caracter):logico
var
Inicio

FimFuncao

//________________________Grupo_3_MODULO_3____________________________

Procedimento ProcessarDeclaracao
var
Inicio

FimProcedimento

Funcao CompararSalarios(_salarioBruto,_salarioLiquido:real):logico
var
inicio

 // Salário Liquuido não pode ser maior que salario Bruto
 // se Salário Liquuido <  salario Bruto = retornar verdadeiro
 // se Salário Liquuido <  salario Bruto =  emitir mensagem de alerta e retornar falso

FimFuncao

Funcao CompararDespesasSalario(_despesas,_salarioLiquido:real):logico
var
inicio

 // _despesas não pode ser maior que salario Liquuido
 // se falso ok, se verdadeiro emitir mensagem de alerta e retornar falso
FimFuncao


//________________________Grupo_4_MODULO_4____________________________
Procedimento ClssificarContribuinte
var
Inicio

FimProcedimento

//________________________Grupo_5_MODULO_5____________________________

Procedimento GerarRelatorio
var
inicio

FimProcedimento

//____________________________________________________________________

//________________________Programa_Principal__________________________
Inicio
   InicializarVariaveisGlobais
   // Ativar em modo Produção
   //TelaAbertura


   Enquanto finalizarPrograma=falso faca
      TelaMenu
      ExecutarFuncao
      LimpaTela
   FimEnquanto





Fimalgoritmo


