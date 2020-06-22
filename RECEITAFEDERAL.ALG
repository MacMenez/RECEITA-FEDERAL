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
// Arquivo com dados iniciais
// Ativar em ambiente de Produção
//arquivo "D:\eng.computacao\LP\trabalho_receita_federal\BaseDadosInicial.csv"
Var
   finalizarPrograma:logico

   // Estrutura do vetor cadastroPessoa:
   // 1 - CPF, 2 - Nome, 3 - Endereco, 4 - Estado civil
   // 5 - Numeros de Dependentes, 6 - Salario Bruto, 7 - Imposto retido na fonte
   // 8 - Investimento, 9 - Despesas, 10 - Classificacao, 11- imposto a pagar
   // 12- imposto a receber,13 - Tipo declaracao
   cadastroPessoa:vetor [1..15] de caracter

   // Estrutura vetor estadoCivil:
   // 1 - CASADO, 2 - SOLTEIRO, 3 - DIVORCIADO, 4 - VIUVO
   estadoCivil:vetor [1..4] de caracter

   // Estrutura vetor declaracaoSimplificada
   // 1 - aliquota, 2 - Imposto a pagar, 3 - imposto a receber
   declaracaoSimplificada:vetor [1..3] de caracter

   // Estrutura vetor declaracaoCompleta
   // 1 - aliquota, 2 - Imposto a pagar, 3 - imposto a receber
   declaracaoCompleta:vetor [1..3] de caracter

   // Utilizada na construção de tela
   linha:caracter

   //matriz temporaia de teste
   bancoDeDados:vetor [1..100,1..13] de caracter

   //____________________________________________________________________

   //________________________Grupo_1_MODULO_1____________________________


Procedimento TelaAbertura
var
   _carregando:caracter
   _contador:inteiro
inicio
   Limpatela
MudaCor("Azul","Fundos")
escreval("":15, "                   ???      ")
escreval("":15,"                   ???????     ")
escreval("":15,"              ???? .???????.     ")
escreval("":15,"          ???????    .????.        ")
escreval("":15,"       ????????  ,,,,  ?? .??????    ")
escreval("":15,"     ????????  ???????  .???????     ")
escreval("":15,"    ?????  ???  ????? .????????     ")
escreval("":15,"      ??  ??????? ''' .????????    ")
escreval("":15,"         ??????????  ???????     ")
escreval("":15,"           ??????????   ??      ")
escreval("":15,"             ?????????        ")
escreval("":15,"               ??????       ")
escreval("":15,"                  ??       ")
escreval("":5,"  _   _  _  _  _ ___         _  _  _   _  _              ")
escreval("":5," |_) |_ /  |_  |  |   /\    |_ |_ | \ |_ |_)  /\   |     ")
escreval("":5," | \ |_ \_ |_  |  |  /--\   |  |_ |_/ |_ | \ /--\  |_    ")
escreval("","")


_carregando:=" * * * * * * * * * "
escreva("":20,"Carregando")

para _contador de 1 ate 15 faca
   PausaFake(3000)
   escreva(copia(_carregando;_contador,1))
fimpara

MudaCor("Preto","Fundos")
FimProcedimento

Procedimento TelaMenu

inicio
   Limpatela
   escreval ("|"+linha+"|")
   escreval ("|                - R E C E I T A   F E D E R A L  -            |")
   escreval ("|                                                              |")
   escreval ("|         _________________     ","    _________________          |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        | ( 1 ) CADASTRO  |    ","   | ( 2 ) RELATORIO |         |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |_________________|    ","   |_________________|         |")
   escreval ("|         _________________     ","    _________________          |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |  ( 3 ) SOBRE    |    ","   |  ( 4 )  SAIR    |         |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |_________________|    ","   |_________________|         |")
   escreval ("|                                                              |")
   escreval ("|"+linha+"|")

Fimprocedimento

Procedimento TelaSobre
var
   _pausar:caracter
inicio
   Limpatela
   escreval("":1,"   ###'''''##    ____   _____   ____   _   ____    _____ ")
   escreval("":1,"  ###  ##   ##  |  __| |  _  | | ___| | | | ___|  |  _  |")
   escreval("":1," ###.########## | |_   | | | | | |    | | | |__   | | | |")
   escreval("":1," ####     ##### |  _|  | |_| | | |    | | |__  |  | |_| |")
   escreval("":1,"  ###  #######  | |    | | | | | |__  | |  __| |  | | | |")
   escreval("":1,"   ##..######   |_|    |_| |_| |____| |_| |____|  |_| |_|")
   escreval("":15,"TRABALHO DE LOGICA DE PROGRAMACAO")
   escreval("":10," _                       __")
   escreval("":10,"|_) _  _  _  o _|_ _    |_  _  _| _  __ _  |")
   escreval("":10,"| \(/_(_ (/_ |  | (_|   |  (/_(_|(/_ | (_| |")
   escreval("")
   escreval("":10,"PROFESSOR : Andre Augusto de Abreu Rodrigues ")
   escreval("":10,"CURSO     : ANÁLISE E DESENVOLVIMETNO DE SISTEMAS")
   escreval("":10,"            ENGENHARIA DA COMPUTACAO")
   escreval("":20, " 2020 - 1o PERIODO")
   escreval("":25, "Versao 1.0")
   escreval(" ":10," Pressione Enter para continuar....":52)
   Leia(_pausar)

FimProcedimento

Procedimento TelaLogoff
var
   _linha1,_linha2,_linha3,_texto1,_texto2,_texto3,_espaco:caracter
   _contador:inteiro
inicio
   Para _contador de 1 ate 44 faca
      Limpatela
      PausaFake(1000)
      escreval("":1,"   ###'''''##    ____   _____   ____   _   ____    _____ ")
      escreval("":1,"  ###  ##   ##  |  __| |  _  | | ___| | | | ___|  |  _  |")
      escreval("":1," ###.########## | |_   | | | | | |    | | | |__   | | | |")
      escreval("":1," ####     ##### |  _|  | |_| | | |    | | |__  |  | |_| |")
      escreval("":1,"  ###  #######  | |    | | | | | |__  | |  __| |  | | | |")
      escreval("":1,"   ##..######   |_|    |_| |_| |____| |_| |____|  |_| |_|")
      escreval("")
      escreval("":15,"TRABALHO DE LOGICA DE PROGRAMACAO")
      escreval("")

      _espaco:=_espaco+" "
      _linha1:=" _                       __                 "
      _linha2:="|_) _  _  _  o _|_ _    |_  _  _| _  __ _  |"
      _linha3:="| \(/_(_ (/_ |  | (_|   |  (/_(_|(/_ | (_| |"
      _texto1:=copia(_linha1;1,_contador)
      _texto2:=copia(_linha2;1,_contador)
      _texto3:=copia(_linha3;1,_contador)

      se _contador mod 2 =0 entao
         escreval(_espaco,"   ( )")
         escreval(_texto1,"   /|\")
         escreval(_texto2,"    |")
         escreval(_texto3,"    | ")

      senao
         escreval(_espaco,"   ( )")
         escreval(_texto1,"    |")
         escreval(_texto2,"    |")
         escreval(_texto3,"   / \ ")

      fimse
      escreval("":_contador,"  ")
   fimpara
   PausaFake(15000)
   Limpatela
FimProcedimento

Procedimento TelaTipoDeclaracao
var
   _dadosTela:vetor [1..3] de caracter
   _contador,_espacamento:inteiro
inicio
   _dadosTela[1]:="Aliquota Efetiva :"
   _dadosTela[2]:="Imposto a Pagar :"
   _dadosTela[3]:="Imposto a Receber :"

   Limpatela
   escreval(linha)
   escreval("":20,"TRIBUTACAO POR DEDUCOES LEGAIS")

   para _contador de 1 ate 3 faca
      _espacamento:=QuantidadeCaracter(_dadosTela[_contador])
      escreval(_dadosTela[_contador]:_espacamento,declaracaoCompleta[_contador])
   fimpara

   escreval(linha)

   escreval("":20,"TRIBUTACAO POR DESCONTO SIMPLIFICADO")

   para _contador de 1 ate 3 faca
      _espacamento:=QuantidadeCaracter(_dadosTela[_contador])
      escreval(_dadosTela[_contador]:_espacamento,declaracaoSimplificada[_contador])
   fimpara
   escreval(linha)


FimProcedimento

Procedimento EntradaDadosTipoDeclaracao
var
   _tipoDeclaracao,_contador:inteiro
inicio

   enquanto _tipoDeclaracao<=0 faca
      TelaTipoDeclaracao
      escreval("1-DESCONTO SIMPLIFICADO ou 2-DEDUCOES LEGAIS(COMPLETA) ")
      escreva("Informe o Tipo de Declaracao :":30)
      leia(_tipoDeclaracao)

      se (_tipoDeclaracao<=0) ou (_tipoDeclaracao>2) entao
         MensagemRodape("Erro","Tipo de Declaracao nao e valida")
         _tipoDeclaracao:=0
      fimse

   fimenquanto

   //Grava os dados do tipo de declaração escolhida
   se _tipoDeclaracao=1 entao
      cadastroPessoa[10]:=declaracaoSimplificada[1]
      cadastroPessoa[11]:=declaracaoSimplificada[2]
      cadastroPessoa[12]:=declaracaoSimplificada[3]
   senao
      cadastroPessoa[10]:=declaracaoCompleta[1]
      cadastroPessoa[11]:=declaracaoCompleta[2]
      cadastroPessoa[12]:=declaracaoCompleta[3]
   fimse

   Para _contador de 1 ate 3 faca
      declaracaoSimplificada[_contador]:=""
      declaracaoCompleta[_contador]:=""
   Fimpara

   cadastroPessoa[13]:=Numpcarac(_tipoDeclaracao)
FimProcedimento

Procedimento TelaDeclaracaoIsento
var
   _contador,_pausar:inteiro
   _isento:caracter
inicio
   _isento:=" C O N T R I B U I N T E  I S E N T O "
   Limpatela
   escreval(linha)
   escreval("":5,"CADASTRO DE DADOS DE I.R.P.F ANO-CALENDARIO 2019 ")
   escreval(linha)
   Para _contador de 1 ate 12 faca
      se _contador=7 entao
         escreval("|":10,_isento:52,"|")
      senao
         escreval("|":62,"|")
      fimse
   Fimpara

   escreval(linha)
   escreval(" ":10," Pressione Enter para continuar....":52)
   Leia(_pausar)


FimProcedimento

Procedimento TelaDadosCadastro
var
   _contador,_quantidadeCaracteres:inteiro
   _conteudoCampo:caracter

   _camposTela:vetor [1..9] de caracter
   _tamanhocampo:vetor [1..9] de inteiro
inicio
   _camposTela[1]:="CPF :"
   _camposTela[2]:="Nome :"
   _camposTela[3]:="Endereco :"
   _camposTela[4]:="Estado Civil :"
   _camposTela[5]:="Numeros de Dependentes :"
   _camposTela[6]:="Salario Bruto Anual :"
   _camposTela[7]:="Imposto Retido na Fonte :"
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

   Limpatela
   escreval(linha)
   escreval("":5,"CADASTRO DE DADOS DE I.R.P.F ANO-CALENDARIO 2019 ")
   escreval(linha)

   // Desenha tela conforme configuração dos vetores:
   //_camposTela = descrição do campo na tela
   // _conteudoCampo = dado informado pelo usuário
   para _contador de 1 ate 9 faca
      _conteudoCampo:=cadastroPessoa[_contador]
      _quantidadeCaracteres:=QuantidadeCaracter(_conteudoCampo)
      _quantidadeCaracteres:=_tamanhocampo[_contador]-_quantidadeCaracteres

      // Prenche com espaço para atenter a formatação do campo
      // conferme configurado vetor _tamanhocampo
      se _quantidadeCaracteres>0 entao
         PreencherComEspacos(_conteudoCampo,_quantidadeCaracteres)
      fimse

      // quebra de linha para o campo endereco
      se _contador=3 entao
         escreval(_camposTela[_contador],copia(_conteudoCampo;1,50))
         escreval(copia(_conteudoCampo;51,50))
      senao
         escreval(_camposTela[_contador],_conteudoCampo)
      fimse

   fimpara
   escreval(linha)

FimProcedimento

Procedimento EntradaDadosTelaCadastro
var
   _contador,_indiceCpfExistente,_controleAlterarExcluir,_espacamento:inteiro
   _entradaDados:vetor [1..9] de caracter
   _dadosValidos:logico
   _impostoSimplificado,_impostoCompleto:real

   // Tipo de dados 0- Cpf, 1 - Monetario Obrigatório , 2 - Alfabetico
   //               3 - AlfaNumerico , 4 - tabela estado civil
   //               5 - Numerico não obrigatorio, 6 - Monetario não obrigatorio
   _tipoDados:vetor [1..9] de inteiro

inicio
   //Limpa Dados
   Para _contador de 1 ate 13 faca
      cadastroPessoa[_contador]:=""
   Fimpara

   _tipoDados[1]:=0
   _tipoDados[2]:=2
   _tipoDados[3]:=3
   _tipoDados[4]:=4
   _tipoDados[5]:=5
   _tipoDados[6]:=1
   _tipoDados[7]:=6
   _tipoDados[8]:=6
   _tipoDados[9]:=1

   _entradaDados[1]:="o Documento Cpf"
   _entradaDados[2]:="o Nome Completo"
   _entradaDados[3]:="o Endereco Resumido"
   _entradaDados[4]:="o Estado Civil "
   _entradaDados[5]:="Numeros de Dependentes "
   _entradaDados[6]:="o Salario Bruto Anual"
   _entradaDados[7]:="o Imposto Retido na Fonte"
   _entradaDados[8]:="o Lucros em Investimento Anual"
   _entradaDados[9]:="o Despesas Dedutiveis Anual"

   // Entrada de dados conforme o tipo de validação do campo
   para _contador de 1 ate 9 faca
      _dadosValidos:=falso
      escolha _tipoDados[_contador]
         _espacamento:=QuantidadeCaracter(_entradaDados[_contador])+3
      caso 0
         cadastroPessoa[_contador]:=ValidarCampoCpf(_entradaDados[_contador],_espacamento)

         _indiceCpfExistente:=PesquisarContribuinte(cadastroPessoa[_contador],1)

         se _indiceCpfExistente>0 entao
            _controleAlterarExcluir:=TelaCadastroExiste()

            // 1- alterar, 2-excluir, 3-Sair
            escolha _controleAlterarExcluir
            caso 1
               TelaAterarDados(_indiceCpfExistente)
            caso 2
               TelaExcluirDados(_indiceCpfExistente)
               interrompa
            caso 3
               interrompa
            fimescolha
         fimse
      Caso 1

         enquanto _dadosValidos=falso faca
            cadastroPessoa[_contador]:=ValidarValorMonetario(_entradaDados[_contador],_espacamento,verdadeiro)

            _dadosValidos:=ValidacaoRegraNegocio()

            se _dadosValidos=falso entao
               TelaDadosCadastro
            fimse

         fimenquanto

      caso 2
         cadastroPessoa[_contador]:=ValidarCampoAlfabetico(_entradaDados[_contador],_espacamento)
      caso 3
         cadastroPessoa[_contador]:=ValidarCampoAlfaNumero(_entradaDados[_contador],_espacamento)
      caso 4
         cadastroPessoa[_contador]:=ValidarCampoEstadoCivil(_entradaDados[_contador],_espacamento)
      caso 5
         cadastroPessoa[_contador]:=ValidarCampoNumericoComZero(_entradaDados[_contador],_espacamento)
      Caso 6

         enquanto _dadosValidos=falso faca
            cadastroPessoa[_contador]:=ValidarValorMonetario(_entradaDados[_contador],_espacamento,falso)

            _dadosValidos:=ValidacaoRegraNegocio()

            se _dadosValidos=falso entao
               TelaDadosCadastro
            fimse

         fimenquanto
      FimEscolha

      TelaDadosCadastro
   fimpara

   se _controleAlterarExcluir < 2 entao

      // Modulo 3 e 4
      ProcessarDeclaracao(_impostoSimplificado,_impostoCompleto)

      se (_impostoSimplificado+_impostoCompleto)>0 entao
         //Modulo 1
         EntradaDadosTipoDeclaracao

         GravarDadosContribuinte(_indiceCpfExistente)

         // Modulo 2
         EmitirRecibo(_indiceCpfExistente)
      senao
         TelaDeclaracaoIsento
      fimse

      // GravarDados

   Fimse

FimProcedimento

Procedimento TelaAterarDados(_indiceCadastro:inteiro)
var

inicio
   RecuperarDadosDeclaracao(_indiceCadastro)
   TelaDadosCadastro
FimProcedimento

procedimento MensagemRodape(_tipoMensagem,_textoMensagem: caracter)
var

inicio

   escreval("|",linha,"|")
   escreval("|[",_tipoMensagem,"]":5,_textoMensagem,"|")
   escreval("|",linha,"|")
   escreva(" ")
   PausaFake(20000)
FimProcedimento

Procedimento ExecutarFuncao
var
   _opcaoMenu:inteiro
inicio

   escreva ("Digite a opcao desejada: ")
   Leia (_opcaoMenu)

   Escolha _opcaoMenu
   Caso 1
      EntradaDadosTelaCadastro
   Caso 2
      Relatorios
   Caso 3
      TelaSobre
   Caso 4
      finalizarPrograma:=verdadeiro
   outrocaso
      MensagemRodape("Erro","Funcao encolhida nao e valida")
   FimEscolha

Fimprocedimento
//_______________Procedimentos__Auxiliares___________________________

procedimento PausaFake(_loopPausa:inteiro)
var
   _numeroloop,_contador:inteiro

inicio
   Para _contador de 1 ate _loopPausa faca
      // loop somente para simular uma pausa
      _numeroloop:=_numeroloop+1
   Fimpara
Fimprocedimento

// Procedimento para atender a transferencia de valor por referencia
Procedimento PreencherComEspacos(var _conteudoCampo:caracter;_espacos:inteiro):caracter
var
   _contador:inteiro
Inicio
   para _contador de 1 ate _espacos faca
      _conteudoCampo:=_conteudoCampo+" "
   fimpara

FimProcedimento

Procedimento InicializarVariaveisGlobais
var
   _contador:inteiro
inicio
   estadoCivil[1]:="CASADO"
   estadoCivil[2]:="SOLTEIRO"
   estadoCivil[3]:="DIVORCIADO"
   estadoCivil[4]:="VIUVO"

   para _contador de 1 ate 62 faca
      linha:=linha+"="
   fimpara

FimProcedimento

//_____________________RELATORIOS____________________________________

Procedimento ListagemDeclaracoes
var
   _indice:inteiro
   _pausar:caracter
   _fimDados:logico
inicio
   _indice:=100
   enquanto _fimDados=falso faca
      ProcessaListagemDeclaracoes(_indice,_fimDados)
      escreval("| ":10," Pressione Enter para continuar....":52,"|")
      leia (_pausar)
      limpatela
      se _indice=0 entao
         _fimDados:=verdadeiro
      fimse
   fimenquanto
FImProcedimento


Procedimento ProcessaListagemDeclaracoes(var _indice:inteiro;var _fimDados:logico)
var
   _contador,_cabecalho,_contador1,_espacamento:inteiro
   _linha,_cpf,_nome,_aliquota,_imposto,_tipoDeclaracao:caracter
inicio

   // Inicializa linha com traços
   para _contador1 de 1 ate 64 faca
      _linha:=_linha+"-"
   FimPara

   // Monta quadros da tela
   limpaTela
   enquanto _contador<10 faca
      _contador:=_contador+1
      se _cabecalho=0 entao
         escreval (_linha)
         escrevaL("|":20,"LISTA DECLARAÇÕES ":44,"|")
         escreval (_linha)
         escrevaL("|":6,"CPF":9,"|":6,"NOME":10,"|":2,"ALIQ":6,"|":6,"IMPOSTO","|":2,"TIPO":7,"|")
         escreval (_linha)
         _cabecalho:=1
      fimse

      se (bancoDeDados[_indice,1]<>"") entao
         _cpf:=bancoDeDados[_indice,1]
         _nome:=copia(bancoDeDados[_indice,2];1,14)
         _aliquota:=bancoDeDados[_indice,10]
         
         _tipoDeclaracao:=bancoDeDados[_indice,13]

         se _tipoDeclaracao="1" entao
            _tipoDeclaracao:="Simp."
         senao
            _tipoDeclaracao:="Comp."
         fimse

         se bancoDeDados[_indice,12]<>"0,00" entao
            _imposto:="R "+bancoDeDados[_indice,12]
         senao
            _imposto:="P "+bancoDeDados[_indice,11]
         fimse

         _espacamento:=12-QuantidadeCaracter(_imposto)
         PreencherComEspacos(_imposto,_espacamento)

         _espacamento:=14-QuantidadeCaracter(_nome)
         PreencherComEspacos(_nome,_espacamento)

         _espacamento:=6-QuantidadeCaracter(_aliquota)
         PreencherComEspacos(_aliquota,_espacamento)


         escreva ("|",_cpf," | ",_nome,"| ",_aliquota," | ",_imposto,"| ",_tipoDeclaracao)
         escreval ("|")
      senao
         _contador:=0
      fimse

      _indice:=_indice-1
      se _indice=0 entao
         _contador:=11
      fimse

   fimenquanto

   escreval(_linha)

FimProcedimento


Procedimento GraficoPercentualAliquota
var
   _coluna:vetor [1..4] de caracter
   _grafico:vetor [1..4] de real
   _aliquotas:vetor[1..4] de inteiro
   _contador,_contador1,_indice,_totalAliquota:inteiro
   _aliquota,_pausar:caracter

inicio

   // Acumula a quantidade de cada aliquotas
   enquanto verdadeiro faca
      _indice:=_indice+1
      se _indice>100 entao
         interrompa
      fimse
      _aliquota:=bancoDeDados[_indice,10]
      escolha _aliquota
      caso "7.5%"
         _aliquotas[1]:=_aliquotas[1]+1
      caso "15%"
         _aliquotas[2]:=_aliquotas[2]+1
      caso "22.5%"
         _aliquotas[3]:=_aliquotas[3]+1
      caso "27.5%"
         _aliquotas[4]:=_aliquotas[4]+1
      fimescolha
   fimenquanto

   Para _contador de 1 ate 4 faca
      _totalAliquota:=_totalAliquota+_aliquotas[_contador]
   fimpara

   se _totalAliquota>0 entao
      // Calculo do percentual de cada aliquota
      Para _contador de 1 ate 4 faca
         _grafico[_contador]:=((100*_aliquotas[_contador])/_totalAliquota)
      fimpara
   fimse

   Limpatela
   escreval("":25,"GRAFICO DE ALIQUOTAS ")
   escreval(linha)

   // Desenha tela do grafico
   Para _contador de 10 ate 1 passo -1 faca
      Para _contador1 de 1 ate 4 faca
         _coluna[_contador1]:="   "
         se  (_grafico[_contador1]>=(_contador*10)) e (_grafico[_contador1]>0) entao
            _coluna[_contador1]:="|||"
         fimse
      fimpara
      escreval((_contador*10),"%":8,_coluna[1],"":8,_coluna[2],"":8,_coluna[3],"":8,_coluna[4])
   fimpara
   escreval(linha)
   escreval("Aliquota":10,"7.5%","":8,"15%","":8,"22.5%","":8,"27.5%")
   escreval(linha)
   escreval(" ":10," Pressione enter para continuar....":52)
   Leia(_pausar)

FimProcedimento

Procedimento TelaSubMenuRelatorio(_numeroLinhas,_numeroColunas,_numeroCampo,_espacamento:inteiro)
var
   _contador,_contador1,_numeroDescricao:inteiro
   _linha:caracter
   _opcaoRelatorio:vetor [1..6] de caracter
Inicio

   _opcaoRelatorio[1]:="1 - Listagem Declaracoes "
   _opcaoRelatorio[2]:="2 - Relatorio Sintetico  "
   _opcaoRelatorio[3]:="3 - Grafico de Aliquotas "
   _opcaoRelatorio[4]:="4 - Reimpressao de Recibo"
   _opcaoRelatorio[5]:="5 - Retornar Menu        "
   _opcaoRelatorio[6]:="                         "

   // Inicializa linha com traços
   para _contador de 1 ate _numeroColunas faca
      _linha:=_linha+"-"
   FimPara

   limpaTela

   // Monta quadros da tela
   para _contador de 1 ate _numeroLinhas faca
      se _contador=1 entao
         escreval (_linha)
         escreval("|":23,"R E L A T O R I O S":40,"|")
         escreval (_linha)
      fimse

      escreval ("|":_numeroColunas-1 ,"|")

      para _contador1 de 1 ate _numeroCampo faca
         escreva ("|":_espacamento)
         _numeroDescricao:=_numeroDescricao+1
         escreva (_opcaoRelatorio[_numeroDescricao])
      fimpara

      escreval (" |")
      escreval ("|":_numeroColunas-1 ,"|")
      escreval (_linha)
   fimpara

FimProcedimento

Procedimento ExecutarSubMenuRelatorio(_opcao:inteiro)
var
inicio
   escolha _opcao
   caso 1
      ListagemDeclaracoes
   caso 2
      //RelatorioSintetico
   caso 3
      GraficoPercentualAliquota
   caso 4
      //ReimpressaoRecibo
   outrocaso
      MensagemRodape("Erro","Funcao escolhida nao e valida")
   fimescolha
Fimprocedimento

Procedimento Relatorios
var
   _opcao:inteiro
inicio
   enquanto _opcao<>5 faca
      TelaSubMenuRelatorio(3,64,2,6)
      escreva("| Informe a funcao que deseja realizada :":45)
      leia(_opcao)
      se _opcao<>5 entao
         ExecutarSubMenuRelatorio(_opcao)
         limpatela
      fimse
   fimenquanto

FimProcedimento

//________________________________Funções______________________________

Funcao ValidacaoRegraNegocio():logico
var
   _salarioBruto,_impostoRetido,_investimentos,_despesasDedutiveis:real
   _dadosValidos:logico
inicio
   _dadosValidos:=verdadeiro
   _salarioBruto:=RemoverFormatacaoMonetaria(cadastroPessoa[6])
   _impostoRetido:=RemoverFormatacaoMonetaria(cadastroPessoa[7])
   _investimentos:=RemoverFormatacaoMonetaria(cadastroPessoa[8])
   _despesasDedutiveis:=RemoverFormatacaoMonetaria(cadastroPessoa[9])

   se (_impostoRetido>(_salarioBruto*0.3)) entao
      MensagemRodape("Erro","Imposto retido ultrapassou 30% do Salario")
      cadastroPessoa[7]:=""
      _dadosValidos:=falso
   fimse

   se (_despesasDedutiveis>(_investimentos+_salarioBruto)) e (_dadosValidos=verdadeiro) entao
      MensagemRodape("Erro","Despesas Ultrassou o valor das Receitas")
      cadastroPessoa[9]:=""
      _dadosValidos:=falso
   fimse

   retorne _dadosValidos

Fimfuncao

Funcao TelaCadastroExiste():inteiro
var
   // 1- alterar, 2-excluir, 3-Sair
   _acao:inteiro
inicio

   enquanto _acao<=0 faca
      escreval("CPF informado ja cadastrado, digite 1- alterar, 2-excluir, 3-Sair ")
      leia(_acao)
      se (_acao<=0) ou (_acao>3) entao
         MensagemRodape("Erro","Funcao encolhida nao e valida")
         _acao:=0
      fimse
   fimenquanto

   retorne _acao

FimFuncao

Funcao ValidarCampoEstadoCivil(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _estadoCivil,_char:caracter
   _contador:inteiro
   _estadoCivilValido:logico
   _iniciarTela:logico
inicio

   enquanto _estadoCivilValido=falso faca

      se _iniciarTela=verdadeiro entao
         TelaDadosCadastro
      fimse
      _iniciarTela:=verdadeiro

      escreva("Informe "+_textoCampo+" :":_espacamento)
      leia(_estadoCivil)
      _estadoCivil:=Maiusc(_estadoCivil)
      _char:=copia(_estadoCivil;1,1)

      se (_char="") ou ((_char<>"C") e (_char<>"S") e (_char<>"D") e (_char<>"V")) entao
         escreval("|":15,"C-CASADO, S-SOLTEIRO, D-DIVORCIADO, V-VIUVO")
         MensagemRodape("Erro",_textoCampo+" Nao e Valido")
      senao
         para _contador de 1 ate 4 faca
            se copia(estadoCivil[_contador];1,1)=_char entao
               _estadoCivilValido:=verdadeiro
               interrompa
            fimse
         fimpara
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
      fimse
      _iniciarTela:=verdadeiro

      escreva("Informe "+_textoCampo+" :":_espacamento)
      leia(_campoAlfabetico)
      se _campoAlfabetico = "" entao
         MensagemRodape("Erro",_textoCampo+" Deve ser Informado ")
      senao
         interrompa
      fimse
   fimenquanto

   retorne _campoAlfabetico

FimFuncao

Funcao ValidarValorMonetario(_textoCampo:caracter;_espacamento:inteiro;obrigatorio:logico):caracter
var
   _numero:real
inicio
   escreva("Informe "+_textoCampo+" :":_espacamento)
   leia(_numero)

   enquanto (_numero<=0) e (obrigatorio=verdadeiro) faca
      MensagemRodape("Erro",_textoCampo)
      TelaDadosCadastro
      escreval("Informe "+_textoCampo+" novamente o valor":_espacamento)
      leia(_numero)
   fimenquanto

   se _numero<0 entao
      _numero:=0
   fimse

   retorne FormataValorMonetario(_numero,".")

FimFuncao

Funcao FormataValorMonetario(_valor:real;_separadorDecimal:caracter):caracter
var
   _valorCaracter,_valorCaracterFormatado,_char:caracter
   _contador,_posicaoDecimal,_quantideCaracter,_casasDecimal,_decimal,_milhar:inteiro
inicio
   _valorCaracter:=NumpCarac(_valor)

   _quantideCaracter:=QuantidadeCaracter(_valorCaracter)
   _decimal:=Pos(".",_valorCaracter)

   se _decimal>0 entao
      _valorCaracter:=copia(_valorCaracter;1,(_decimal+2))
      _quantideCaracter:=(_decimal+2)
   fimse

   // Formata valor conforme padrão de moeda brasileiro
   para _contador de _quantideCaracter ate 1 passo -1 faca
      _char:=copia(_valorCaracter;_contador,1)

      se _char <> "." entao
         _valorCaracterFormatado:=_char+_valorCaracterFormatado
      fimse
      _milhar:=_milhar+1

      se (_contador=_decimal) e (_decimal>0) entao
         _valorCaracterFormatado:=","+_valorCaracterFormatado
         _milhar:=0
         _casasDecimal:=_casasDecimal+1
         se _casasDecimal=2 entao
            interrompa
         fimse
      fimse

      se (_milhar=3) e (_contador<>1) entao
         _valorCaracterFormatado:="."+_valorCaracterFormatado
         _milhar:=0
      fimse

   fimpara

   // Se não existir decimal acresenta dois zeros ao final
   se _decimal=0 entao
      _valorCaracterFormatado:=_valorCaracterFormatado+",00"
   fimse

   // Necessário para valor com final de decimal com 0
   // formato padrao contem somente 1 zero, entao o sistema
   // acresenta mais um zero
   _contador:=QuantidadeCaracter(_valorCaracterFormatado)
   _posicaoDecimal:=Pos(",",_valorCaracterFormatado)+2
   se (_contador<_posicaoDecimal) e (_decimal<>0) entao
      _valorCaracterFormatado:=_valorCaracterFormatado+"0"
   fimse
   retorne _valorCaracterFormatado

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
      fimse

      _iniciarTela:=verdadeiro
      escreva("| Informe "+_textoCampo+" :":_espacamento)
      leia(_campoAlfabetico)

      se _campoAlfabetico <> "" entao

         // Conveter toda os dados digitados em MAIUSCULO
         _campoAlfabetico:=Maiusc(_campoAlfabetico)

         // Para de 1 ate 100 pois o maior campo do baco é de 100 posições
         para _contador de 1 ate 100 faca
            // remove cada caracter dos dados
            _char:=copia(_campoAlfabetico;_contador,1)

            // Verifica final dos dados
            se _char="" entao
               interrompa
            fimse

            // Converte o caracter no numero inteiro que é representado
            // na tebela ASCII
            _charAscii:=Asc(_char)

            // permite someten A = 65 ate Z = 90  e espaço = 32
            se ((_charAscii<65) ou (_charAscii>90)) e (_charAscii <> 32) entao
               MensagemRodape("Erro",_textoCampo+" deve ter somente caracteres alfabeticos")
               _campoAlfabetico:=""
               interrompa
            fimse

         fimpara
      senao
         MensagemRodape("Erro",_textoCampo+" deve ter somente caracteres alfabeticos")
      fimse

      // Caso a variavel seja diferente de vazio o é valido
      se _campoAlfabetico <> "" entao
         interrompa
      fimse

   fimenquanto

   retorne _campoAlfabetico

FimFuncao

Funcao ValidarCampoCpf(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _cpfValido,_contador,_charAscii:inteiro
   _cpfFormatado,_cpf,_char:caracter
inicio

   enquanto verdadeiro faca
      TelaDadosCadastro
      escreva("| Informe "+_textoCampo+" :":_espacamento)

      leia(_cpf)
      _cpf:=copia(_cpf;1,11)

      Para _contador de 1 ate 11 faca
         _char:=copia(_cpf;_contador,1)
         se _char="" entao
            interrompa
         fimse

         _charAscii:=Asc(_char)
         se (_charAscii<48)ou(_charAscii>57) entao
            _cpf:=""
            interrompa
         Fimse
      Fimpara
      _cpfValido:=QuantidadeCaracter(Numpcarac(_cpf))

      se _cpfValido <> 11 entao
         MensagemRodape("Erro",_textoCampo+" nao e valida")
      senao
         interrompa
      fimse
   fimenquanto
   _cpfFormatado:=Copia(_cpf;1,3)+"."+Copia(_cpf;4,3)+"."+Copia(_cpf;7,3)+"-"+Copia(_cpf;10,2)

   retorne _cpfFormatado

FimFuncao


Funcao QuantidadeCaracter(_conteudo:caracter):inteiro
var
   _quantidadeCaracteres:inteiro
inicio
   _quantidadeCaracteres:=1

   enquanto verdadeiro faca

      se Copia(_conteudo;_quantidadeCaracteres,1)="" entao
         interrompa
      fimse
      _quantidadeCaracteres:=_quantidadeCaracteres+1
   fimenquanto

   _quantidadeCaracteres:=_quantidadeCaracteres-1

   retorne _quantidadeCaracteres

Fimfuncao

//________________________Grupo_2_MODULO_2____________________________

Procedimento GravarDadosContribuinte(var _indice:inteiro)
var
   _contador:inteiro
inicio
   se _indice=0 entao
      para _contador de 1 ate 100 faca
         se BancoDeDados[_contador,1]="" entao
            _indice:=_contador
            Interrompa
         fimse
      fimpara
   fimse

   para _contador de 1 ate 13 faca
      BancoDeDados[_indice,_contador]:=cadastroPessoa[_contador]
      cadastroPessoa[_contador]:=""
   FIMPARA

FimProcedimento


Funcao ExcluirDadosContribuinte(_cpf:caracter):logico
var
 _indiceExcluir:inteiro
Inicio

_indiceExcluir:=PesquisarContribuinte(_cpf,1)

FimFuncao

Funcao PesquisarContribuinte(_dadosCampo: caracter;_indiceCampo:inteiro): inteiro
Var
   _contador,_indice: inteiro
Inicio
   para _contador de 1 ate 100 faca
      se BancoDeDados [_contador,_indiceCampo] = _dadosCampo entao
         _indice := _contador
         Interrompa
      fimse
   fimpara

   Retorne _indice

FimFuncao

Procedimento RecuperarDadosDeclaracao(_indice:inteiro)
var
   _contador:inteiro
inicio

   Para _contador de 1 ate 13 faca
      cadastroPessoa[_contador]:=BancoDeDados[_indice,_contador]
   Fimpara


Fimprocedimento


Procedimento EmitirRecibo(_indice:inteiro)
var
   _tamanhocampo:vetor[1..12] de inteiro
   _contador,_quantidadeCaracteres:inteiro
   _conteudoCampo,_tipoDeclaracao,_numeroRecibo,_pausar:caracter
inicio
   RecuperarDadosDeclaracao(_indice)
   _quantidadeCaracteres:=QuantidadeCaracter(Numpcarac(_indice))
   _numeroRecibo:=copia("00000000";1,(8-_quantidadeCaracteres))+_numeroRecibo

   _tamanhocampo[1]:=14
   _tamanhocampo[2]:=20
   _tamanhocampo[3]:=40
   _tamanhocampo[4]:=15
   _tamanhocampo[5]:=2
   _tamanhocampo[6]:=15
   _tamanhocampo[7]:=15
   _tamanhocampo[8]:=15
   _tamanhocampo[9]:=15
   _tamanhocampo[10]:=5
   _tamanhocampo[11]:=15
   _tamanhocampo[12]:=15

   para _contador de 1 ate 12 faca
      _conteudoCampo:=cadastroPessoa[_contador]
      _quantidadeCaracteres:=QuantidadeCaracter(_conteudoCampo)
      _quantidadeCaracteres:=_tamanhocampo[_contador]-_quantidadeCaracteres

      // Prenche com espaço para atenter a formatação do campo
      // conferme configurado vetor _tamanhocampo
      se _quantidadeCaracteres>0 entao
         PreencherComEspacos(_conteudoCampo,_quantidadeCaracteres)
      fimse
      cadastroPessoa[_contador]:=copia(_conteudoCampo;1,_tamanhocampo[_contador])
   fimpara

   se cadastroPessoa[13]="1" entao
      _tipoDeclaracao:="Simplificada"
   senao
      _tipoDeclaracao:="Completa"
   fimse

   Limpatela
   escreval (linha)
   escreval ("Miniterio da Fazenda             Imposto - Pessoa Fisica")
   escreval ("Secretaria da Receita            Excercicio 2020")
   escreval ("Federal do Brasil                Ano-Calendario 2019")
   escreval (linha)
   escreval ("=========== Recibo Nº ",_numeroRecibo," da IRPF/2020 ===================")
   escreval (linha)
   escreval ("Sr(a) ", cadastroPessoa[2], ", inscrito no CPF de Nº ", cadastroPessoa[1])
   escreval ("Residente no enderço: ", cadastroPessoa[3])
   escreval("":25,"DECLARO POSSUIR")
   escreval ("")
   escreval("Nº de dependentes :",cadastroPessoa[5],"  Salario bruto: ",cadastroPessoa[6])
   escreval("Imposto Retido :",cadastroPessoa[7]," Investimento:",cadastroPessoa[8])
   escreval("Despesas Dedutiveis :",cadastroPessoa[9],"  Aliquota: ",cadastroPessoa[10])
   escreval("Imposto a Pagar :",cadastroPessoa[11]," Imposto a Recebar : ",cadastroPessoa[12])
   escreval("Tipo Declaracao :",_tipoDeclaracao)
   escreval (linha)
   escreva(" ":10," Pressione Enter para continuar....":52)
   Leia(_pausar)


FimProcedimento

Procedimento DadosIniciais
var
   _linhaDado:caracter
   _NumeroRegistro:inteiro

inicio
   enquanto verdadeiro faca
      leia(_linhaDado)
      se _linhaDado="FIMxBANCOxDADOS" entao
         interrompa
      fimse
      _NumeroRegistro:=_NumeroRegistro+1
      ExtrairDados(_linhaDado,_NumeroRegistro)
   fimenquanto

Fimprocedimento

Procedimento ExtrairDados(_linhaDados:caracter;_NumeroRegistro:inteiro)
var
   _dadosTemporario:caracter
   _posicaoInicial,_posicaoFinal,_contador,_quantidadeDados:inteiro
inicio
   _posicaoInicial:=1
   Para _contador de 1 ate 13 faca
      _posicaoFinal:=Pos("|",_linhaDados)-1
      _dadosTemporario:=copia(_linhaDados;_posicaoInicial,_posicaoFinal)
      bancoDeDados[_NumeroRegistro,_contador]:=_dadosTemporario
      _quantidadeDados:=QuantidadeCaracter(_linhaDados)
      _linhaDados:=copia(_linhaDados;(_posicaoFinal+2),_quantidadeDados)
   fimpara
Fimprocedimento


//________________________Grupo_3_MODULO_3____________________________
Procedimento ProcessarDeclaracao(var _impostoSimplificado,_impostoCompleto:real)
var
   _salarioBruto,_deducaoInss,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis:real
   _aliquotaIrpf:real
   _dependentes:inteiro

Inicio
   _dependentes:=Caracpnum(cadastroPessoa[5])
   _salarioBruto:=RemoverFormatacaoMonetaria(cadastroPessoa[6])
   _impostoRetidoFonte:=RemoverFormatacaoMonetaria(cadastroPessoa[7])
   _lucroInvestimento:=RemoverFormatacaoMonetaria(cadastroPessoa[8])
   _despesasDedutiveis:=RemoverFormatacaoMonetaria(cadastroPessoa[9])
   _deducaoInss:=CalculaDeducaoInss(_salarioBruto)
   _impostoSimplificado:=CalcularDeclaracaoSimplificada(_dependentes,_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss)
   _impostoCompleto:=CalcularDeclaracaoCompleta(_dependentes,_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss)

FimProcedimento

Funcao CalcularDeclaracaoSimplificada(_dependentes:inteiro;_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss:real):real
var
   _deducao,_baseCalculo,_aliquota,_aliquotaCalculada,_imposto:real
   _aliquotaEfetiva:caracter

inicio
   _deducao:=Deduzir(1,_dependentes, _salarioBruto ,_despesasDedutiveis)
   _baseCalculo:=(_salarioBruto+_lucroInvestimento)-(_deducao+_deducaoInss)
   _aliquota:=Aliquota(_baseCalculo)
   _imposto:=_baseCalculo*_aliquota

   se _aliquota<>0 entao
      _imposto:=_baseCalculo*_aliquota
   fimse

   _imposto:=_imposto-_impostoRetidoFonte
   _aliquotaCalculada:=(_imposto/_baseCalculo)*100

   se  _aliquotaCalculada > (_aliquota*100) entao
      _aliquotaCalculada:=_aliquota
   fimse

   se  _aliquotaCalculada <0 entao
      _aliquotaCalculada:=0
   fimse

   _aliquotaEfetiva:=Numpcarac(_aliquotaCalculada)
   declaracaoSimplificada[1]:=copia(_aliquotaEfetiva;1:5)+"%"

   se _imposto<0 entao
      _imposto:=_imposto*-1
      declaracaoSimplificada[3]:=FormataValorMonetario(_imposto,".")
   senao
      declaracaoSimplificada[2]:=FormataValorMonetario(_imposto,".")
   fimse

   retorne _imposto

FimFuncao

Funcao CalcularDeclaracaoCompleta(_dependentes:inteiro;_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss:real):real
var
   _deducao,_baseCalculo,_aliquota,_aliquotaCalculada,_imposto:real
   _aliquotaEfetiva:caracter

inicio
   _deducao:=Deduzir(2,_dependentes, _salarioBruto ,_despesasDedutiveis)
   _baseCalculo:=(_salarioBruto+_lucroInvestimento)-(_deducao+_deducaoInss)
   _aliquota:=Aliquota(_baseCalculo)

   se _aliquota<>0 entao
      _imposto:=_baseCalculo*_aliquota
   fimse

   _imposto:=_imposto-_impostoRetidoFonte
   _aliquotaCalculada:=(_imposto/_baseCalculo)*100

   se  _aliquotaCalculada > (_aliquota*100) entao
      _aliquotaCalculada:=_aliquota
   fimse

   se  _aliquotaCalculada <0 entao
      _aliquotaCalculada:=0
   fimse

   _aliquotaEfetiva:=Numpcarac(_aliquotaCalculada)
   declaracaoCompleta[1]:=copia(_aliquotaEfetiva;1:5)+"%"

   se _imposto<0 entao
      _imposto:=_imposto*-1
      declaracaoCompleta[3]:=FormataValorMonetario(_imposto,".")
   senao
      declaracaoCompleta[2]:=FormataValorMonetario(_imposto,".")
   fimse

   retorne _imposto

FimFuncao

Funcao Aliquota(_baseCalculo:real):real
var
   _aliquota:real
inicio
   _aliquota:=0

   se (_baseCalculo>=22847.77) e (_baseCalculo<=33919.80) entao
      _aliquota:=0.075
   fimse

   se (_baseCalculo>=33919.81) e (_baseCalculo<=45012.60) entao
      _aliquota:=0.15
   fimse

   se (_baseCalculo>=45012.61) e (_baseCalculo<=55976.16) entao
      _aliquota:=0.225
   fimse

   se (_baseCalculo>55976.16) entao
      _aliquota:=0.275
   fimse
   retorne _aliquota

FimFuncao

Funcao CalculaDeducaoInss(_salarioBruto:real):real
var
   _aliquotaInss:inteiro
   _valorDeducao:real
   _valoresRefecenciaAnual:vetor[1..2] de real
inicio
   _valoresRefecenciaAnual[1]:=21963.48
   _valoresRefecenciaAnual[2]:=36606.24

   se _salarioBruto < _valoresRefecenciaAnual[1] entao
      _valorDeducao:=_salarioBruto*0.08
   fimse
   se (_salarioBruto >  _valoresRefecenciaAnual[1]) e (_salarioBruto <  _valoresRefecenciaAnual[2])  entao
      _valorDeducao:=_salarioBruto*0.09
   fimse
   se _salarioBruto > _valoresRefecenciaAnual[2]  entao
      _valorDeducao:=_salarioBruto*0.11
   fimse

   retorne _valorDeducao

Fimfuncao

Funcao RemoverFormatacaoMonetaria(_numero:caracter):real
var
   _contador:inteiro
   _numeroCaracter,_char:caracter
inicio
   enquanto verdadeiro faca
      _contador:=_contador+1
      _char:=copia(_numero;_contador,1)
      se _char="" entao
         interrompa
      fimse
      se _char <> "." entao
         _numeroCaracter:=_numeroCaracter+_char
      fimse
   fimenquanto

   retorne Caracpnum(_numeroCaracter)

Fimfuncao

//________________________Grupo_4_MODULO_4____________________________

Funcao Deduzir(_tipodeDeclaracao,_numeroDeDependente:inteiro; _redimentoAnual ,_despesasDedutiveis:real) :real
var
   _deducao,_dedudaoPorDependente,_totalDeducaoDependente:real
   _contador:inteiro
inicio
   _dedudaoPorDependente:=2275.08

   Para _contador de 1 ate _numeroDeDependente faca
      _totalDeducaoDependente:=_totalDeducaoDependente+_dedudaoPorDependente
   fimpara

   se _tipodeDeclaracao=1 entao
      _deducao:=DeducaoSimplificada(_redimentoAnual,_despesasDedutiveis,_totalDeducaoDependente)
   senao
      _deducao:=DeducaoCompleta(_despesasDedutiveis,_totalDeducaoDependente)
   fimse

   retorne _deducao

FimFuncao

Funcao DeducaoSimplificada(_redimentoAnual,_despesasDedutiveis,_totalDeducaoDependente:real):real
var
   _limiteDeducaoSimplificada,_maximoDeducao:real
   _totalDeducaoCalculada,_deducao:real
   _contador:inteiro

inicio

   // Regra interna para limite de despesas dedutiveis
   // será no maximo 80% do total de despesas
   _despesasDedutiveis:=_despesasDedutiveis*0.8

   _limiteDeducaoSimplificada:=16754.34
   _maximoDeducao:=_redimentoAnual*0.2

   se _maximoDeducao<_limiteDeducaoSimplificada entao
      _limiteDeducaoSimplificada:=_maximoDeducao
   fimse
   _totalDeducaoCalculada:=_despesasDedutiveis+_totalDeducaoDependente

   se _totalDeducaoCalculada>_limiteDeducaoSimplificada entao
      _deducao:=_limiteDeducaoSimplificada
   senao
      _deducao:= _totalDeducaoCalculada
   fimse

   retorne _deducao

FimFuncao

Funcao DeducaoCompleta(_despesasDedutiveis,_totalDeducaoDependente:real):real
var

inicio
   // Regra interna para limite de despesas dedutiveis
   // será no maximo 20% do total de despesas
   _despesasDedutiveis:=_despesasDedutiveis*0.2

   retorne (_despesasDedutiveis + _totalDeducaoDependente)

Fimfuncao


//________________________Grupo_5_MODULO_5____________________________

Procedimento GerarRelatorio
var
inicio

FimProcedimento

//____________________________________________________________________

//________________________Programa_Principal__________________________
Inicio


   //Ativar em ambiente de Produção
   //DadosIniciais
   InicializarVariaveisGlobais
   //Ativar em ambiente de Produção
   TelaAbertura


   enquanto finalizarPrograma=falso faca
      TelaMenu
      ExecutarFuncao
      Limpatela
   fimenquanto

   TelaLogoff

Fimalgoritmo
