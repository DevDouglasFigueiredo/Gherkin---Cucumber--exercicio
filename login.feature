#language:pt

# Funcionalidade
Feature: tela de login
    como aluno do portal EBAC
    quero me autenticar
    para visualizar minhas notas

    # contexto
    Background:
        Given que eu acesse a pagina de autenticação do portal EBAC

    Scenario: Autenticação Válida
        When eu digitar o usuario "joao@ebac.com,br"
        And a senha "senha123"
        Then deve exibir uma mensagem de boas vindas "Olá João"

    Scenario: Usuario Inexistente
        When eu digitar o usuario "xxxyyy@ebac.com,br"
        And a senha "senha123"
        Then deve exibir uma mensagem de alerta "Usuario Inexistente"

    Scenario: Usuario com senha inválida
        When eu digitar o usuario "joao@ebac.com,br"
        And a senha "huehuaheaueh"
        Then deve exibir uma mensagem alerta "Usuário ou senha inválidos"

    # Esquema de cenario na tradução
    Scenario Outline: Autenticar multiplos usuários
        When eu digitar <usuario>
        And a <senha>
        Then  deve exibir a <mensagem> de sucesso

        Examples:
            | usuario             | senha     | mensagem    |
            | "joao@ebac.com.br"  | teste@123 | "ola João"  |
            | "maria@ebac.com.br" | teste@123 | "ola Maria" |
            | "paulo@ebac.com.br" | teste@123 | "ola Paulo" |
