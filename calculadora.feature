        #language: pt

        Funcionalidade: Calculadora
        Como não sei fazer conta de cabeça
        Quero usar a calculadora do sistema
        Para somas números

        Cenário: Soma de 2 números
        Dado que eu acesse a calculadora
        Quando eu somar 2 + 2
        Então o resultado deve ser 4

        Esquema do Cenário: Soma de 2 números
        Quando eu digitar <numero 1>
        And digitar o <numero 2>
        Então deve aparecer a <soma> deles

        Examples:
            | numero 1 | numero 2 | soma |
            | "2"      | "3"      | "5"  |
            | "1"      | "7"      | "8"  |
            | "3"      | "4"      | "7"  |
            | "4"      | "9"      | "13" |
            | "7"      | "6"      | "13" |
            | "9"      | "9"      | "18" |
            | "6"      | "1"      | "7"  |