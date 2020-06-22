Algoritmo "SIMULAIPRF"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/06/2020
Var
   // Seção de Declarações das variáveis

   Simu_IPRF: REAL         //VARIÁVEL QUE RETORNA OS VALORES DA SIMULAÇÃO DO IPRF

funcao calculo():real      //INICIO DA FUNÇÃO SIMULAÇÃO DO IPRF

Var
   // Seção de Declarações das variáveis LOCAIS SIMULAÇÃO DO IPRF
   //Favor apagar a variável _teste

   //ABAIXO VARIÁVES DE ENTRADA PELO USUÁRIO
   _tipo_simu,_sal_brut_mensal, _rend_trbut_mensal,_prev_privada,_quant_dependente,_pen_aliment,_otras_deduc, _teste: real

   //ABAIXO VARIÁVEIS DE CÁLCULO
   _inss_deduc, _dependente_deduc, _prev_privada_duduc, _base_calc, _IRPF: real
   _repet_tipo_simu: inteiro
   _repetir: caracter
inicio

   _repetir <- "Y"                        // ATRIBUI VERDADEIRO PARA ENTRAR NO LAÇO REPETE FUNÇÃO

   REPITA                                 // INICIO DO LAÇO REPETE A FUNÇÃO

      limpatela()                         // LIMPA TELA INICIO DA SIMULAÇÃO

      REPITA                              // INICIO DO LAÇO REPETE A SELEÇÃO DO TIPO DE DECLARAÇÃO (ANUAL, MENSAL)

         Escreval("Para fazer a simulação do IPRF mensal digite 1, para anual 2: ")
         leia (_tipo_simu)

         se (_tipo_simu = 1) ou (_tipo_simu = 2) entao
            limpatela()                   //LIMPA TELA ENTRADA OK

            se (_tipo_simu = 1) entao
               escreval ("MENSAL")        //APAGAR
               leia (_teste)              //APAGAR

               // INICIO ENTRADA DE DADOS PELO USUÁRIO (DECLARAÇÃO MENSAL)

               limpatela()
               escreval ("Digite o Salário Bruto Mensal: ")
               leia (_sal_brut_mensal)

               limpatela()
               escreval ("Digite dos Demais Rendimentos tributáveis Mensais: ")
               leia (_rend_trbut_mensal)

               limpatela()
               escreval ("Caso Tenha Previdência Privada, Informe o Valor Percentual Mensal: ")
               leia (_prev_privada)

               limpatela()
               escreval ("Digite a Quantidade de Dependentes: ")
               leia (_quant_dependente)

               limpatela()
               escreval ("Digite o Valor Pago de Pensão Alimentícia: ")
               leia (_pen_aliment)

               limpatela()
               escreval ("Digite o Valor das Demais Deduções: ")
               leia (_otras_deduc)

               // FIM ENTRADA DE DADOS PELO USUÁRIO (DECLARAÇÃO MENSAL)

               // INICIO CALCULO INSS

               se (_sal_brut_mensal < 1045.01) entao
                  _inss_deduc <- _sal_brut_mensal * 0.075
               senao
                  se (_sal_brut_mensal < 2089.61) entao
                     _inss_deduc <- _sal_brut_mensal * 0.09
                  senao
                     se (_sal_brut_mensal < 3134.41) entao
                        _inss_deduc <- _sal_brut_mensal * 0.12
                     senao
                        _inss_deduc <- _sal_brut_mensal * 0.14
                     fimse
                  fimse
               fimse

               // FIM CALCULO INSS

               // INICIO CALCULO DEPENDENTES

               se (_quant_dependente > 0) entao
                  _dependente_deduc <- (_quant_dependente * 189.59)
               fimse

               //FIM CALCULO DEPENDENTES

               //INICIO CALCULO PREVIDÊNCIA PRIVADA

               _prev_privada_duduc <- (_prev_privada/100) * _sal_brut_mensal

               //FIM CALCULO PREVIDÊNCIA PRIVADA

               // INICIO BASE DE CÁLCULO

               _base_calc <- _sal_brut_mensal - (_inss_deduc + _dependente_deduc + _prev_privada_duduc + _pen_aliment + _otras_deduc)

               // FIM BASE DE CÁLCULO

               limpatela()
               escreval ("Base de Cálculo: ", _base_calc)
               leia (_teste)               //APAGAR

               se (_base_calc < 1903.98) entao
                  escreval (" VOCÊ ESTÁ ISENTO DE IMPOSTOS.")
               fimse
               se (_base_calc >= 1903.99) e (_base_calc <= 2826.65) entao
                  _IRPF <- (_base_calc * 7.5 / 100)
                  escreval ("VOCÊ PAGARÁ R$",_IRPF," DE IMPOSTOS.")
               fimse
               se (_base_calc >= 2826.66) e (_base_calc <= 3751.05)	entao
                  _IRPF <- (_base_calc * 15 / 100)
                  escreval ("VOCÊ PAGARÁ R$",_IRPF," DE IMPOSTOS.")
               fimse
               se (_base_calc >= 3751.06) e (_base_calc <= 4664.6)	entao
                  _IRPF <- (_base_calc * 22.5 / 100)
                  escreval ("VOCÊ PAGARÁ R$",_IRPF," DE IMPOSTOS.")
               fimse
               se (_base_calc > 4664.68)	entao
                  _IRPF <- (_base_calc * 27.5 / 100)
                  escreval ("VOCÊ PAGARÁ R$",_IRPF," DE IMPOSTOS.")
               fimse

               _repet_tipo_simu <- 3      //ESTOURA REPETE A SELEÇÃO DO TIPO DE DECLARAÇÃO (ANUAL, MENSAL)

            senao
               escreval ("ANUAL")         //APAGAR
               leia (_teste)              //APAGAR

               _repet_tipo_simu <- 3      //ESTOURA REPETE A SELEÇÃO DO TIPO DE DECLARAÇÃO (ANUAL, MENSAL)

            fimse
         senao
            limpatela()                   //LIMPA TELA ENTRADA NOK
            escreval("Desculpe, mas não entendi! Vamos tentar de novo.")

            _repet_tipo_simu <- _repet_tipo_simu +1           //LIMITA EM TRÊS TENTATIVAS DE SIMULAÇÃO

         fimse

      ATE (_repet_tipo_simu = 3)          //FIM DO LAÇO REPETE A SELEÇÃO DO TIPO DE DECLARAÇÃO (ANUAL, MENSAL)

      //impatela()                         LIMPA TELA FIM DE OPERAÇÃO

      escreval("FIM DE OPERAÇÃO!!! DESEJA REALIZAR NOVA SIMULAÇÃO? (Y/N)")
      leia (_repetir)

      se(_repetir = "y") entao            // GARANTE QUE Y E y SEJA IDENTIFICADO PELO PROGRAMA
         _repetir <- "Y"
      fimse

   ATE (_repetir <> "Y")                  //FIM DO LAÇO REPETE FUNÇÃO

fimfuncao                                 //FIM DA FUNÇÃO SIMULAÇÃO DO IPRF

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   Simu_IPRF <- calculo()

Fimalgoritmo
