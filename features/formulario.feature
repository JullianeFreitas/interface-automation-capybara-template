#language:pt

Funcionalidade: Banco de Funcionalidades

  Esquema do Cenário: Abrir navegador e validar formulário de email com informações válidas
    Quando abro o navegador
    E clico no menu "Criar Usuários"
    Entao preencho o formulário com os parâmetros:
      | nome   | ultimo_nome   | email   | endereco   | universidade   | profissao   | genero   | idade   |
      | <nome> | <ultimo_nome> | <email> | <endereco> | <universidade> | <profissao> | <genero> | <idade> |
    E crio o usuário

    Exemplos:
      | nome     | ultimo_nome | email     | endereco | universidade | profissao | genero   | idade |
      | Julliane | Freitas     | jf@ml.com | Rua do X | UFBA         | QA        | Feminino | 27    |