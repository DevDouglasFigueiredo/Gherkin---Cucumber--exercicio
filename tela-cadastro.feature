#language: pt

# [US-0003] – Tela de cadastro - Checkout

# Critérios de Aceitação:
# 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
# 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
# 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 

Funcionalidade: Tela de cadastro - Checkout

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

# [US-0003] Critério -1 ----------------------------------------------------------------------------------------

Contexto:
Dado que eu acesse a pagina de checkout do EBAC-SHOP


Cenário: Campos obrigatórios
E preencha todos os campo obrigatórios marcados com asteriscos
Quando clicar em finalizar compra
Então devo ser redirecionado para uma tela de compra finalizada

# [US-0003] Critério -2 ----------------------------------------------------------------------------------------

Cenário: E-mail Inválido
Quando eu digitar um usuário que não seja no formato de e-mail
E clicar em finalizar compra
Então deve aparecer uma mensagem de erro "E-mail inválido"

# [US-0003] Critério -3 ----------------------------------------------------------------------------------------

Cenário: Campos Vazios
E deixe campos obrigatórios vazios
Quando eu clicar em finalizar compra
Então deve aparecer uma mensagem de alerta "Preencher campos obrigatórios por favor"
