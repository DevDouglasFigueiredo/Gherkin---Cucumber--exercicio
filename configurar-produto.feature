#language: pt 

# [US-0001] – Configurar produto   

# Critérios de Aceitação:
# 1 – Seleções de cor, tamanho e   devem ser obrigatórios
# 2 – Deve permitir apenas 10 produtos por venda
# 3 –Quando eu clicar no botão “limpar” deve voltar ao estado original



Funcionalidade: Página de Venda
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho

# [US-0001] Critério--------------------------------------------------------------------------------------------

Contexto:
Dado que eu acesse a pagina de vendas do Produto 

Cenário: Compra da Jaqueta
E escolha o tamanho
E a cor
E a quantidade
Quando eu clicar no botão comprar
Então devo ser redirecionado para o checkout

Cenário: Configurar Quantidade
E escolha o tamanho
E a cor
Quando eu clicar no botão comprar
Então deve aparecer uma mensagem de erro "Inserir a quantidade do produto desejado"

Cenário: Configurar Tamanho
E a cor
E a quantidade
Quando eu clicar no botão comprar
Então deve aparecer uma mensagem de erro "Inserir o tamanho do produto desejado"

Cenário: Configurar Cor
E escolha o tamanho
E a quantidade
Quando eu clicar no botão comprar
Então deve aparecer uma mensagem de erro "Inserir a cor do produto desejado"

# [US-0001] Critério -2 -----------------------------------------------------------------------------------------

Cenário: limite de unidades por venda
E quero comprar 15 unidades
Quando clicar no botão comprar
Então deve aparecer uma mensagem de erro "permitido apenas 10 unidades por pedido"

Cenário: limite aceitável de unidades por venda
E quero comprar 10 unidades
Quando clicar no botão comprar
Então devo ser redirecionado para o checkout

# [US-0001] Critério -3 ----------------------------------------------------------------------------------------

Cenário: Limpar informações
E escolha o tamanho
E a cor
E a quantidade
Quando eu clicar no botão limpar
Então deve ser limpar todas as informações selecionadas




