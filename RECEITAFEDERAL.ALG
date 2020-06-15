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
   // 5 - Numeros de Dependentes, 6 - Salario Bruto, 7 - Imposto retido na fonte
   // 8 - Investimento, 9 - Despesas, 10 - Classificacao, 11- imposto a pagar
   // 12- imposto a receber,13 - Tipo declaracao
   cadastroPessoa:vetor [1..13] de caracter

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

   teste:real
   //____________________________________________________________________

   //________________________Grupo_1_MODULO_1____________________________


Procedimento TelaAbertura
var
   _carregando:caracter
   _contador:inteiro
inicio
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

timer 200
_carregando:=" * * * * * * * * * "
escreva("":20,"Carregando")
para _contador de 1 ate 15 faca
   escreva(copia(_carregando;_contador,1))
fimpara
timer 0 off

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
   escreval ("|        | ( 1 ) CADASTRO  |    ","   | ( 2 ) RELATÓRIO |         |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |_________________|    ","   |_________________|         |")
   escreval ("|         _________________     ","    _________________          |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |                 |    ","   |                 |         |")
   escreval ("|        |  ( 3 ) Sobre    |    ","   |  ( 4 )  SAIR    |         |")
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
   escreval("")
   escreval("":15,"TRABALHO DE LÓGICA DE PROGRAMAÇÃO")
   escreval("":10," _                       __")
   escreval("":10,"|_) _  _  _  o _|_ _    |_  _  _| _  __ _  |")
   escreval("":10,"| \(/_(_ (/_ |  | (_|   |  (/_(_|(/_ | (_| |")
   escreval("")
   escreval("":10,"PROFESSOR : André Augusto de Abreu Rodrigues ")
   escreval("":10,"CURSO     : ANÁLISE E DESENVOLVIMETNO DE SISTEMAS")
   escreval("":10,"            ENGENHARIA DA COMPUTAÇÃO")
   escreval("":20, "    2020 - 1º PERIODO")
   escreval(" ":10," Pressione Enter para continuar....":52)
   Leia(_pausar)

FimProcedimento

Procedimento TelaTipoDeclaracao
var
   _dadosTela:vetor [1..3] de caracter
   _contador,_espacamento:inteiro
inicio
   _dadosTela[1]:="Aliquota Efetiva :"
   _dadosTela[2]:="imposto a Pagar :"
   _dadosTela[3]:="imposto a Receber :"


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
   _tipoDeclaracao:inteiro
inicio

   enquanto _tipoDeclaracao<=0 faca
      TelaTipoDeclaracao
      escreval("Informe o Tipo de Declaracao:")
      escreval("1 - POR DEDUCOES LEGAIS ou 2 - POR DESCONTO SIMPLIFICADO")
      leia(_tipoDeclaracao)

      se (_tipoDeclaracao<=0) ou (_tipoDeclaracao>2) entao
         MensagemRodape("Erro","Tipo de Declaracao não é valida")
         _tipoDeclaracao:=0
      fimse

   fimenquanto

   se _tipoDeclaracao=1 entao
      cadastroPessoa[10]:=declaracaoSimplificada[1]
      cadastroPessoa[11]:=declaracaoSimplificada[2]
      cadastroPessoa[12]:=declaracaoSimplificada[3]
   senao
      cadastroPessoa[10]:=declaracaoCompleta[1]
      cadastroPessoa[11]:=declaracaoCompleta[2]
      cadastroPessoa[12]:=declaracaoCompleta[3]
   fimse

   cadastroPessoa[13]:=Numpcarac(_tipoDeclaracao)
FimProcedimento

Procedimento TelaDadosCadastro
var
   _contador,_quantidadeCaracteres,_camposUmaLinha:inteiro
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

   para _contador de 1 ate 9 faca
      _conteudoCampo:=cadastroPessoa[_contador]
      _quantidadeCaracteres:=QuantidadeCaracter(_conteudoCampo)
      _quantidadeCaracteres:=_tamanhocampo[_contador]-_quantidadeCaracteres

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

Procedimento EntradaDados
var
   _contador,_indiceCpfExistente,_controleAlterarExcluir,_espacamento:inteiro
   _entradaDados:vetor [1..9] de caracter


   // Tipo de dados 0- Cpf, 1 - Monetario Obrigatório , 2 - Alfabetico
   //               3 - AlfaNumerico , 4 - tabela estado civil
   //               5 - Numerico não obrigatorio, 6 - Monetario não obrigatorio
   _tipoDados:vetor [1..9] de inteiro

inicio
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

   para _contador de 1 ate 9 faca
      escolha _tipoDados[_contador]
         _espacamento:=QuantidadeCaracter(_entradaDados[_contador])+3
      caso 0
         cadastroPessoa[_contador]:=ValidarCampoCpf(_entradaDados[_contador],_espacamento)

         _indiceCpfExistente:=PesquisarContribuinte(cadastroPessoa[_contador])

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
         cadastroPessoa[_contador]:=ValidarValorMonetario(_entradaDados[_contador],_espacamento,verdadeiro)
      caso 2
         cadastroPessoa[_contador]:=ValidarCampoAlfabetico(_entradaDados[_contador],_espacamento)
      caso 3
         cadastroPessoa[_contador]:=ValidarCampoAlfaNumero(_entradaDados[_contador],_espacamento)
      caso 4
         cadastroPessoa[_contador]:=ValidarCampoEstadoCivil(_entradaDados[_contador],_espacamento)
      caso 5
         cadastroPessoa[_contador]:=ValidarCampoNumericoComZero(_entradaDados[_contador],_espacamento)
      Caso 6
         cadastroPessoa[_contador]:=ValidarValorMonetario(_entradaDados[_contador],_espacamento,falso)
      FimEscolha

      TelaDadosCadastro
   fimpara

   se _controleAlterarExcluir < 2 entao

      // Modulo 3
      ProcessarDeclaracao

      //Modulo 1
      EntradaDadosTipoDeclaracao

      // Modulo 2
      EmitirRecibo

   Fimse

FimProcedimento

Procedimento TelaAterarDados(_indiceCadastro:inteiro)
var

inicio
   AlterarDadosContribuinte(_indiceCadastro)
   TelaDadosCadastro
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

procedimento MensagemRodape(_tipoMensagem,_textoMensagem: caracter)
var
inicio

   escreval("|",linha,"|")
   escreval("|[",_tipoMensagem,"]":5,_textoMensagem,"|")
   escreval("|",linha,"|")
   timer 2000
   timer 0 off

FimProcedimento

Procedimento ExecutarFuncao
var
   _opcaoMenu:inteiro
inicio

   escreva ("Digite a opção desejada: ")
   Leia (_opcaoMenu)

   Escolha _opcaoMenu
   Caso 1
      EntradaDados
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

// Procedimento para atender a transferencia de valor por referencia
Procedimento PreencherComEspacos(var _conteudoCampo:caracter;_espacos:inteiro):caracter
var
   _contador:inteiro
Inicio
   para _contador de 1 ate _espacos faca
      _conteudoCampo:=_conteudoCampo+" "
   fimpara

FimProcedimento


//________________________________Funções______________________________

Funcao TelaCadastroExiste():inteiro
var
   // 1- alterar, 2-excluir, 3-Sair
   _acao:inteiro
inicio

   enquanto _acao<=0 faca
      escreval("CPF informado ja cadastrado, digite 1- alterar, 2-excluir, 3-Sair ")
      leia(_acao)
      se (_acao<=0) ou (_acao>3) entao
         MensagemRodape("Erro","Função encolhida não é valida")
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
         MensagemRodape("Erro",_textoCampo+"  maior que (Zero)0")
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

   retorne FormataValorMonetario(_numero)

FimFuncao

Funcao FormataValorMonetario(_valor:real):caracter
var
   _valorCaracter,_valorCaracterFormatado,_char:caracter
   _contador,_quantideCaracter,_casasDecimal,_decimal,_milhar:inteiro
inicio
   _valorCaracter:=NumpCarac(_valor)

   // Realiza a contagem dos caracteres e busca se foi informado valor decimal
   enquanto verdadeiro faca
      _contador:=_contador+1
      _char:=copia(_valorCaracter;_contador,1)

      se _char="" entao
         interrompa
      fimse

      se _char= "." entao
         _decimal:=_contador
      fimse

   fimenquanto

   _quantideCaracter:=_contador-1

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
   se ((_quantideCaracter-_decimal)<2) e (_decimal<>0) entao
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

         _campoAlfabetico:=Maiusc(_campoAlfabetico)

         para _contador de 1 ate 100 faca
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

         fimpara
      senao
         MensagemRodape("Erro",_textoCampo+" deve ter somente caracteres alfabeticos")
      fimse

      se _campoAlfabetico <> "" entao
         interrompa
      fimse

   fimenquanto

   retorne _campoAlfabetico

FimFuncao

Funcao ValidarCampoCpf(_textoCampo:caracter;_espacamento:inteiro):caracter
var
   _cpfValido:inteiro
   _cpf:real
   _cpfFormatado:caracter
inicio

   enquanto verdadeiro faca
      TelaDadosCadastro
      escreva("| Informe "+_textoCampo+" :":_espacamento)
      leia(_cpf)

      se _cpf =0 entao
         MensagemRodape("Erro",_textoCampo+" não é valida")
      senao
         _cpfValido:=QuantidadeCaracter(Numpcarac(_cpf))
         se _cpfValido <> 11 entao
            MensagemRodape("Erro",_textoCampo+" não é valida")
         senao
            interrompa
         fimse
      fimse

   fimenquanto

   _cpfFormatado:=Numpcarac(_cpf)
   _cpfFormatado:=Copia(_cpfFormatado;1,3)+"."+Copia(_cpfFormatado;4,3)+"."+Copia(_cpfFormatado;7,3)+"-"+Copia(_cpfFormatado;10,2)
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

Procedimento GravarDadosContribuinte
var
Inicio

FimProcedimento

Procedimento AlterarDadosContribuinte(_indiceCadastro:inteiro)
var
Inicio

FimProcedimento

Funcao ExcluirDadosContribuinte(_cpf:caracter):logico
var
Inicio

FimFuncao

Funcao PesquisarContribuinte(_cpf:caracter):inteiro
var
Inicio

   retorne 0

FimFuncao

Procedimento EmitirRecibo
var
inicio
FimProcedimento

//________________________Grupo_3_MODULO_3____________________________
Procedimento ProcessarDeclaracao
var
   _salarioBruto,_deducaoInss,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis:real
   _aliquotaIrpf:real
   _dependentes:inteiro

Inicio
   _dependentes:=Caracpnum(cadastroPessoa[5])
   _salarioBruto:=ConverteCaracterParaReal(cadastroPessoa[6])
   _impostoRetidoFonte:=ConverteCaracterParaReal(cadastroPessoa[7])
   _lucroInvestimento:=ConverteCaracterParaReal(cadastroPessoa[8])
   _despesasDedutiveis:=ConverteCaracterParaReal(cadastroPessoa[9])
   _deducaoInss:=CalculaDeducaoInss(_salarioBruto)
   CalcularDeclaracaoSimplificada(_dependentes,_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss)
   CalcularDeclaracaoCompleta(_dependentes,_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss)

FimProcedimento

Procedimento CalcularDeclaracaoSimplificada(_dependentes:inteiro;_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss:real)
var
   _deducao,_baseCalculo,_aliquota,_imposto:real
   _aliquotaEfetiva:caracter

inicio
   _deducao:=Deduzir(1,_dependentes, _salarioBruto ,_despesasDedutiveis)
   _baseCalculo:=(_salarioBruto+_lucroInvestimento)-(_deducao+_deducaoInss)
   _aliquota:=Aliquota(_baseCalculo)
   _imposto:=_baseCalculo*_aliquota
   _imposto:=_imposto-_impostoRetidoFonte

   _aliquotaEfetiva:=Numpcarac((_imposto/_baseCalculo)*100)
   declaracaoSimplificada[1]:=copia(_aliquotaEfetiva;1:5)+" %"
   se _imposto<0 entao
      declaracaoSimplificada[3]:=FormataValorMonetario((_imposto*-1))
   senao
      declaracaoSimplificada[2]:=FormataValorMonetario(_imposto)
   fimse

FimProcedimento

Procedimento CalcularDeclaracaoCompleta(_dependentes:inteiro;_salarioBruto,_impostoRetidoFonte,_lucroInvestimento,_despesasDedutiveis,_deducaoInss:real)
var
   _deducao,_baseCalculo,_aliquota,_imposto:real
   _aliquotaEfetiva:caracter

inicio
   _deducao:=Deduzir(2,_dependentes, _salarioBruto ,_despesasDedutiveis)
   _baseCalculo:=(_salarioBruto+_lucroInvestimento)-(_deducao+_deducaoInss)
   _aliquota:=Aliquota(_baseCalculo)
   _imposto:=_baseCalculo*_aliquota
   _imposto:=_imposto-_impostoRetidoFonte

   _aliquotaEfetiva:=Numpcarac((_imposto/_baseCalculo)*100)
   declaracaoCompleta[1]:=copia(_aliquotaEfetiva;1:5)+" %"

   se _imposto<0 entao
      declaracaoCompleta[3]:=FormataValorMonetario((_imposto*-1))
   senao
      declaracaoCompleta[2]:=FormataValorMonetario(_imposto)
   fimse

FimProcedimento

Funcao Aliquota(_baseCalculo:real):real
var
   _aliquota:real
inicio
   _aliquota:=0

   se (_baseCalculo>=22847.77) ou (_baseCalculo<=33919.80) entao
      _aliquota:=0.075
   fimse

   se (_baseCalculo>=33919.81) ou (_baseCalculo<=45012.60) entao
      _aliquota:=0.15
   fimse

   se (_baseCalculo>=45012.61) ou (_baseCalculo<=55976.16) entao
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
   _valoresRefecenciaAnual[1]:=20324.76
   _valoresRefecenciaAnual[2]:=33874.80


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

Funcao ConverteCaracterParaReal(_numero:caracter):real
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
inicio

   retorne 0
FimFuncao


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

   enquanto finalizarPrograma=falso faca
      TelaMenu
      ExecutarFuncao
      Limpatela
   fimenquanto

Fimalgoritmo
