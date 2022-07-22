#language: pt

# [US-0002] – Login na plataforma  

# Critérios de Aceitação:
# 1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
# 2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
# 3 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

# [US-0002] Critério -1 ----------------------------------------------------------------------------------------

Contexto:
Dado que eu acesse a pagina de autenticação do EBAC-SHOP

Cenário: Autenticação Válida
Quando eu digitar o usuario "xxxxx@xxxxx.com.br"
E a senha "xxxxx"
E clicar no botão Login
Então devo ser redirecionado para a tela de checkout

# [US-0002] Critério -2 ----------------------------------------------------------------------------------------

Cenário: Usuário Inválido
Quando eu digitar um usuário que não seja no formato de e-mail
E digitar a senha "xxxx"
E clicar no botão Login
Então deve aparecer uma mensagem de erro "Usuário ou senha inválidos"

Cenário: Usuário Inexistente
Quando eu digitar o usuário "xxxx@xxxx.com.br"
E digitar a senha "xxxx"
E clicar no botão Login
Então deve aparecer uma mensagem de erro "Usuário ou senha inválidos, registre-se agora mesmo"

Cenário: E-mail Inválido
Quando eu digitar um e-mail diferente do registrado
E digitar uma senha válida
E clicar no botão Login
Então deve aparecer uma mensagem de erro "Usuário ou senha inválidos"

Cenário: Senha Inválida
Quando eu digitar um usuário válido
E digitar uma senha diferente da registrada
E clicar no botão Login
Então deve aparecer uma mensagem de erro "Usuário ou senha inválidos"

# [US-0002] Critério -3 ----------------------------------------------------------------------------------------

Cenário: Campo de e-mail em branco
Quando eu deixar o campo de e-mail em branco
E digitar uma senha válida
E clicar no botao Login
Então deve aparecer uma mensagem de erro "preencher campos obrigatórios"

Cenário: Campo de senha em branco
Quando eu digitar um usuário válido
E deixar o campo de senha em branco
E clicar no botao Login
Então deve aparecer uma mensagem de erro "preencher campos obrigatórios"








