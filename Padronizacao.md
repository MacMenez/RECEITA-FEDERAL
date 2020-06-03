# Padronização
__Com o objetivo de facilitar a compreensão de todos os participantes e para padronizar os códigos gerados desse projeto, será sugerido uma padronização de código e para  possível documentação quando necessário .__
___

> **“ Qualquer tolo consegue escrever código que um computador entenda. Bons programadores escrevem código que humanos possam entender.”** Martin Fowler

## Nome de Variáveis:

Para nome variáveis será adotado a convenção camelCase:

Exemplo:
``` 
var
nomeVariavel:inteiro 
```

Variáveis privadas (local):
Use um underscore _ como primeiro caractere no nome de variáveis local.

Exemplo:
``` 
var
_variavelLocal:inteiro 
```
 Dicas para Nome de Variáveis:

- *Use nomes de fácil pronuncia*
- *Use nomes que faça sentido para o contexto*

> Nomear as coisas de forma correta é mais complicado do que parece, porém, deve ser algo que todo desenvolvedor deve ter em mente. É muito importante pensar bem nos nomes para que outros desenvolvedores consigam entender sua lógica. Lembre-se sempre, escrevemos códigos para os outros não para nós mesmos.

## Convenção para Funções:

**As funções serão utilizadas sempre que existir a necessidade de processamento com algum retorno de valores, caso exista somente um processamento sem retorno de valores utilizar Procedimentos.**

Para nome funções será adotado a convenção PascalCase:

``` 

Funcao NomeFuncao():real
  var
    _variavelLocal:caracter
    _variavelLocalReal:real
  Inicio
    // Processamento 
    retorne _variavelLocalReal
FimFuncao
```

Estrutura de uma função:

``` 

Funcao NomeFuncao(_parametroLocal:real, var parametroGlobal:inteiro):real
  var
    _variavelLocal:caracter
    _variavelLocalReal:real
  Inicio
    // Processamento 
    retorne _variavelLocalReal
FimFuncao
```

## Convenção para Procedimento:

**Os procedimentos serão utilizadas sempre que não existir a necessidade receber algum retorno de valores, caso exista necessídade de retorno de valores utilizar Funções.**

Para nome Procedimento será adotado a convenção PascalCase:

``` 

Procedimento NomeProcedimento
  var
    _variavelLocal:caracter
    _variavelLocalReal:real
  Inicio
    // Processamento 
    
FimProcedimento
```

Estrutura de uma função:

``` 

Procedimento NomeProcedimentoo(_parametroLocal:real, var parametroGlobal:inteiro)
  var
    _variavelLocal:caracter
    _variavelLocalReal:real
  Inicio
    // Processamento 
    
FimProcedimento
```

## Comentário do Código

Comentário não é justificativa para ter um código sujo, bons códigos são auto documentados

![comentarios](https://miro.medium.com/max/1020/1*t121ld2jBNm_szHX_wmbfw.png)

Comente somente o que for realmente  necessário, o código deve expressar e fazer exatamente o que o nome dele diz que ele faz.

Evite comentários que não agregam nada além de linhas no código fonte  como o exemplo abaixo: 

```
// realiza a conversão de moeda

Funcao ConverterMoeda()
var
inicio

FimFuncao
```` 
Evite comentário gigantes, isso pode indicar que o código está difícil de entender, refatore se necessário.



> **"O que torna códigos legíveis são: clareza, simplicidade e consistência de expressão."** Robert C. Martin

