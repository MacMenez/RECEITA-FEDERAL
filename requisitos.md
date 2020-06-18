# Requisitos de Software
__Será informado neste documento os requisitos do sistema, regras de aplicação e regras de negócio necessárias__
# Entrada de dados

# Dados Inseridos pelo Usuário:
    Nome:
    Endereço:
    Estado Civil:
    Nº de dependentes:
    CPF:
    Total Salário Bruto:
    Total Imposto Retido:
    Total Despesas:
    Total Investimento:
    
    
# Layout de dados 
| Campo | Descrição | Obrigatório | Tipo | Tamanho | Formatação |
| --- | --- |  :---: |  --- |  ---: |   --- |
| Nome | Nome do contribuinte  | SIM | Alfabético | 50 | |
|Endereço | Endereço do contribuinte  | SIM | AlfaNumérico  | 100 | |
|Estado Civil  | Estado civil do contribuinte  | SIM | Alfabético  | 1 | <p>C-CASADO</p><p>S-SOLTEIRO</p><p>D-DIVORCIADO</p> V-VIÚVO  |
|Dependentes  | Número de Dependentes do contribuinte  | NÃO| Numérico  | 2 | NN |
|CPF  | Documento   do contribuinte  | SIM | Numérico  | 11 | NNN.NNN.NNN-NN |
|Total Salário Bruto  |Valor total bruto recebido no ano pelo contribuinte  | SIM | Monetário  | 15 | NN.NNN.NN|
|Total Imposto Retido  |Valor total imposto retido na fonte  | NÃO | Monetário  | 15 | NN.NNN.NN|
|Total Investimento |Valor total dos lucros de investimento recebidos  no ano pelo contribuinte  | NÃO| Monetário  | 15 | NN.NNN.NN|
|Total Despesas  |Valor total despesas dedutíveis  no ano pelo contribuinte  | SIM | Monetário  | 15 | NN.NNN.NN|
|Percentual Alíquota  | Percentual de imposto conforme classificação  | SIM | Numérico  | 2 |NN|
|Total Imposto a Pagar |Valor total do imposto devido pelo contribuinte | SIM | Monetário  | 15 | NN.NNN.NN|
|Total Imposto a Receber |Valor total do imposto restituido para contribuinte | SIM | Monetário  | 15 | NN.NNN.NN|
|Total Declaracao |Tipo de delcaração 1- Declaração Simplificada, 2- Declaração completa| SIM | Númerico  | 1 | N|

# Tabela de Aliquotas Imposto Renda Anual

| Base de cálculo  | Alíquota | Parcela a deduzir do IRPF |
| --- |  :---: |  ---: | 
| Até 22.847,77 | Isento  | R$ 0,00 |
| De R$ 22.847,77 até R$ 33.919,80 | 7.5 %  |R$ 1.713,58 |
| De R$ 33.919,81 até R$ 45.012,60 | 15 %  | R$ 4.257,57 |
| De R$ 45.012,61 até R$55.976,16 | 22.5 %  | R$ 7.633,51 |
| Acima de R$ 55.976,16 | 27.5 %  | R$ 10.432,32|

# Tabela de Aliquotas INSS Anual

| Base de cálculo  | Alíquota |
| --- |  ---: | 
| Até 21.963,48 | 8 %  |
| De R$ 21.963,49 até R$ 36.606,24‬ | 9 %  |
| Acima de  36.606,24‬ | 11 %  |
  
