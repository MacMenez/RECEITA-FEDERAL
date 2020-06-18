Algoritmo "Dedução"

// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/06/2020
Var

// Seção de Declarações das variáveis
funcao Deduzir(tipodeDeclaracao :inteiro, redimentoAnual :real,despesasDedutiveis :real,numeroDeDependentes :inteiro) :real

var impostoApagar :real
var valorDeduzido : real
var deducaoDependentes : real
var deducaoINSS : real
var irrf : real

inicio

se (tipodeDeclaracao = 1) entao
    //deduzir o valor do rendimento anual em 20%
	  valorDeduzido= rendimentoAnual - rendimentoAnual * 20%;
    impostoApagar= baseDeCalculo(valorDeduzido);
    
senao
se (tipodeDeclaracao = 2) entao
  //calcular o valor total de dedução por dependente
	
	deducaoDependentes := deducaoPorDependentes(numeroDependentes);
	deducaoINSS := deducaoINSS(rendimentoAnual)
	irrf := impostoRetinoNaFonte(rendimentoAnual)
	
	//Deduzir o rendimento
	
	valorDeduzido = rendimentoAnual - deducaoDependentes - despesasDedutiveis - deducaoINSS;

	//passar o valorDeduzido valor como parâmetro da função de base de cálculo, que irá retornar o valor a ser pago como imposto de renda
	impostoApagar =  baseDeCalculo(valorDeduzido);

senao
     //Imprime mensagem de erro
    escreval("Condição inválida!");

fimse
fimse


retorne impostoApagar
fimfuncao


//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

funcao retidoNaFonte(rendimentoAnual : real) : real

inicio

//Esta função ira receber o rendimento anual do usuário, irá dividir por doze para obter o rendimento mensal, irá verificar na tabela qual a contribuição social mensalmente,



fimfuncao



//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

funcao deducaoINSS(rendimentoAnual : real) : real

inicio

//Esta função ira receber o rendimento anual do usuário, irá dividir por doze para obter o rendimento mensal, irá verificar na tabela qual a contribuição social mensalmente,
//Com este valor irá multiplicar por 12 e irá retornar o valor total a ser deduzido baseado na contribuição.


fimfuncao



//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



funcao deducaoPorDependentes(numDependentes : inteiro) : real

inicio

//Função irá retornar o valor total de dedução baseado na quantidade de dependentes, o valor unitário por dependente é 2275,08

fimfuncao

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



funcao baseDeCalculo(valorDeduzido : real) : real

inicio

//Função irá retornar o valor total de impostos a pagar baseado na tabela de imposto de renda anual

fimfuncao

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo
