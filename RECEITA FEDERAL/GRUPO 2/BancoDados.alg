Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : André Rodrigues
// Descrição   : Desenvolver um código de Armazenamento de Dados .alg
// Autor(a)    : Alisson, Amilton, Davi, Gabriel A., Gabriel V., Lucas
// Data atual  : 02/06/2020

Var
// Seção de Declarações das variáveis 
    cadastroPessoa: VETOR [1..15] DE CARACTERE
    BancoDados: VETOR [1..100, 1..13] DE CARACTERE

    contador, indice: INTEIRO
    posicao: inteiro
    numCPF: caractere
// Fim da Seção de Declarações das variáveis   

// Seção de Declarações das Funções
Funcao Pesquisa(Dados: CARACTERE): INTEIRO
    Var
        contador: inteiro
        infoUsuario: CARACTERE
    Inicio
        PARA contador de 1 ATE 13 FACA
            SE BancoDados [1, contador] = Dados ENTAO
                Interrompa
            FIMSE
        FIMPARA

        Retorne contador
FimFuncao

Funcao Excluir
    Var
        teste: vetor[1..5,1..13] de inteiro

        filer, id, desejoDeExclusao:inteiro
    
    Inicio

        // a primeira posiçao representa o id do usurio registrado

        para filer de 1 ate 5 faca
            teste[filer,1]<-filer
        fimpara

        para filer de 1 ate 5 faca
            teste[filer,2]<-11
        fimpara

        para filer de 1 ate 5 faca
            teste[filer,3]<-22
        fimpara

        para filer de 1 ate 5 faca
            teste[filer,4]<-33
        fimpara

        escreval("Sera exibida uma tabela que representa meros dados imaginarios em uma tabela na qual tera os dados excluidos")
        escreval("")
        escreval("")
        escreval("")
        escreval("")

        escreval("ID  ","| dado ","| dado ","| dado")
        para filer de 1 ate 5 faca
        escreval(teste[filer,1], "  |  ",teste[filer,2], " |  ",teste[filer,3], " | ",teste[filer,4])
        fimpara
        escreval("")
        escreval("")
        escreval("")
        escreval("")

        // Desta parte em diante, deve ser pensada em uma funçao que esta sendo executada j no codigo principal

        desejoDeExclusao<- 1
        enquanto (desejoDeExclusao = 1) faca
            escreval("Digite o id de usurio a ser excludo: ")
            leia(id)

            teste[id,1]<-000

            escreval("Usuario de id ", id, " foi excluido!!")
            
            escreval("ID  ","| dado ","| dado ","| dado")
            para filer de 1 ate 5 faca
                escreval(teste[filer,1], "  |  ",teste[filer,2], " |  ",teste[filer,3], " | ",teste[filer,4])
            fimpara
            
            escreval("para excluir usurios digite 1, para encerrar a execuçao digite 2")
            leia(desejoDeExclusao)
        fimenquanto
FimFuncao
// Fim Seção de Declarações das Funções

Inicio
// Seção de Comandos 
    PARA contador DE 1 ATE 13 FACA
        BancoDados [1, contador] := Carac((contador+64))
    FIMPARA

    numCPF := "12345678900"

    escolha contador
    caso contador[1,1]
    contador[1,1] := numCPF
    outrocaso
    escreval("não existe")
    fimescolha
    posicao := Pesquisa(numCPF)
    ESCREVAL("Posição: ", posicao)
    ESCREVAL(indice)
    ESCREVAL(contador)
// Fim Seção de Comandos 
Fimalgoritmo