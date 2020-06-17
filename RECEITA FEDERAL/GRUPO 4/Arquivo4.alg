Algoritmo "Dedução"

// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/06/2020
Var

// Seção de Declarações das variáveis
funcao Deduzir(tipodeDeclaracao :inteiro, redimentoAnual :real,despesasDedutiveis :real,numeroDeDependente :inteiro) :real

var impostoApagar :real
var valorDeduzido : real
var deducaoDependentes : real

inicio

se (tipodeDeclaracao = 1) entao
    //deduzir o valor do rendimento anual em 20%
	  valorDeduzido= rendimentoAnual - rendimentoAnual * 20%;
    impostoApagar= baseDeCalculo(valorDeduzido);
    
senao
se (tipodeDeclaracao = 2) entao
  //calcular o valor total de dedução por dependente
	 deducaoDependentes = numeroDeDependentes * 189,59;

	//Deduzir o rendimento
	 valorDeduzido = rendimentoAnual - deducaoDependentes - despesasDedutiveis;

	//passar o valorDeduzido valor como parâmetro da função de base de cálculo, que irá retornar o valor a ser pago como imposto de renda
	impostoApagar =  BaseDeCalculo(valorDeduzido);

senao
     //Imprime mensagem de erro
    escreval("Condição inválida!");

fimse
fimse


retorne impostoApagar
fimfuncao

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo
