#language: pt 


Funcionalidade: Página de Venda
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho

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

