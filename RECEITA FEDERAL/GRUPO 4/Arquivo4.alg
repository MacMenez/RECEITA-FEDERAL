Algoritmo "Dedução"
//  
//  

// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/06/2020
Var

// Seção de Declarações das variáveis
funcao Deduzir(tipodeDeclaracao : inteiro; rendimentoAnual,despesasDedutiveis, inss : real ;numeroDeDependentes : inteiro) :real

var
   impostoApagar : real
   valorDeduzido : real
   deducaoDependentes : real
   valorFormatado : real

inicio



se (tipodeDeclaracao = 1) entao
    //deduzir o valor do rendimento anual em 20%
	  valorDeduzido := rendimentoAnual - rendimentoAnual * 0.2;
    impostoApagar := baseDeCalculo(valorDeduzido);

senao
se (tipodeDeclaracao = 2) entao
  //calcular o valor total de dedução por dependente

	deducaoDependentes := deducaoPorDependentes(numeroDeDependentes);
	//Deduzir o rendimento

	valorDeduzido := rendimentoAnual - deducaoDependentes - despesasDedutiveis - inss;

	//passar o valorDeduzido valor como parâmetro da função de base de cálculo, que irá retornar o valor a ser pago como imposto de renda
	impostoApagar :=  baseDeCalculo(valorDeduzido);

senao
     //Imprime mensagem de erro
    escreval("Condição inválida!");

fimse
fimse

retorne impostoApagar
fimfuncao


//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



funcao deducaoPorDependentes(numDependentes : inteiro) : real

inicio

retorne 2275.08 * numdependentes

fimfuncao

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



funcao baseDeCalculo(rendimento : real) : real


inicio

se rendimento <= 22847.76 entao
   retorne 0
senao
   se (rendimento >= 22847.77) e (rendimento <= 33919.80) entao
      retorne rendimento *0.075 - 1713.58
   senao
      se (rendimento >= 33919.81) e (rendimento <= 45012.60) entao
         retorne  rendimento * 0.15 - 7633.51
      senao
         se (rendimento >= 45012.61) e (rendimento <= 55976.16) entao
            retorne  rendimento * 0.225 - 7633.51
         senao
            se (rendimento > 55976.16) entao
               retorne rendimento * 0.275 - 10432.32
            fimse
         fimse
      fimse
   fimse
fimse
fimFuncao



//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

Fimalgoritmo
