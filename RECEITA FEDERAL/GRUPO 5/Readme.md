# Geração de relatório

## Vetores e Matriz:

O sistema terá uma matriz do tipo caracter que terá a seguinte estrutura:

obs: x corresponde ao número do registro da declaração. 

BancoDados[x,1]=123.456.789-12        (CPF formatado)

BancoDados[x,2]=JOSE MARIA           (Nome do declarante)

BancoDados[x,3]=Rua Curitiba,122      (Endereço)

BancoDados[x,4]=CASADO                  (Estado Civil)

BancoDados[x,5]=2                               (Número de dependentes)

BancoDados[x,6]=75.000,00                 (Salário Bruto anual)

BancoDados[x,7]=1.500,00                   (Imposto retido na fonte)

BancoDados[x,8]=3.250,12                   (Lucro sobre investimento)

BancoDados[x,9]=5.850,20                   (Despesas dedutíveis)

BancoDados[x,10]=7.5%                       (Porcentagem da classificação)

BancoDados[x,11]=1.200,10                  (Total do imposto a pagar)

BancoDados[x,12]=0,00                        (Total do imposto a restituir)

BancoDados[x,13]=1                       (Tipo de declaração 1-simplificada ,2 -Completa)

## Função úteis:

O sistema já possui algumas funções que podem ajudar na geração do relatório.
 
**QuantidadeCaracter(_conteudo:caracter):inteiro**

Função que retorna um valor do inteiro com a quantidade de caracteres

Exemplo: maria irá retornar 5 

**RemoverFormatacaoMonetaria(_numero:caracter):real**
Função que remove a formatação monetária e converte o valor para real

exemplo: 17.555,21 irá retornar 14555.21


**FormataValorMonetario(_valor:real):caracter**

Função que converte um valor real em um valor caracter formatado como moeda.

exemplo: 14555.21 irá retornar 17.555,21

# Impressão em tela

Função nativa no Visualg que gera impressão em tela conforme posição informada após os : (dois pontos), para contabilizar a posição é considerada a posição inicial da última expressão “escreva”.

Exemplo:
escreva("posicao1":30,"posicao2":15,"posicao3")

![consoleRelatorio](https://github.com/MacMenez/RECEITA-FEDERAL/blob/master/RECEITA%20FEDERAL/GRUPO%205/img/consoleRelatorio.png)
