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
|Total Imposto Retido  |Valor total imposto retido na fonte  | SIM | Monetário  | 15 | NN.NNN.NN|
|Total Despesas  |Valor total despesas dedutíveis  no ano pelo contribuinte  | SIM | Monetário  | 15 | NN.NNN.NN|
|Total Investimento |Valor total dos lucros de investimento recebidos  no ano pelo contribuinte  | NÃO| Monetário  | 15 | NN.NNN.NN|
|Percentual Alíquota  | Percentual de imposto conforme classificação  | SIM | Numérico  | 2 |NN|
|Total Imposto |Valor total do imposto devido pelo contribuinte | SIM | Monetário  | 15 | NN.NNN.NN|


  
