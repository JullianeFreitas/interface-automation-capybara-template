#language:pt

Funcionalidade: Banco de Funcionalidades

  Esquema do Cenário: Abrir navegador e validar formulário de email com informações válidas
    Quando abro o navegador
    E clico no menu "Criar Usuários"
    E envio email com os parâmetros:
      | nome  | email           |
      | Maria | maria@email.com |
    E volto para a página anterior
    Exemplos:
      |      |
      |      |
#
#  Esquema do Cenário: Abrir navegador e validar formulário de email com informações vazias
#    Quando abro o navegador
#    E envio email com os parâmetros:
#      | nome  | email           |
#      |       |                 |
#    E valido mensagem de todos os campos necessários para o formulário de email
#    Exemplos:
#      |   |
#      |   |
#
#  Esquema do Cenário: Abrir navegador e validar formulário de email com email inválido
#    Quando abro o navegador
#    E envio email com os parâmetros:
#      | nome  | email           |
#      | Maria | maria           |
#
#    E valido mensagem de email inválido para o formulário de email
#    Exemplos:
#      |      |
#      |      |
#
#  Esquema do Cenário: Abrir navegador e validar formulário de email com email vazio
#    Quando abro o navegador
#    E envio email com os parâmetros:
#      | nome  | email           |
#      | Maria |                 |
#
#    E valido mensagem de email nulo para o formulário de email
#    Exemplos:
#      |      |
#      |      |
#
#  Esquema do Cenário: Abrir navegador, clicar em um botão usando o ID
#    Quando abro o navegador
#    E clico em um botão usando o ID
#    E volto para a página anterior
#    Exemplos:
#      |  |
#      |  |
#
#  Esquema do Cenário: Abrir navegador, clicar em um botão usando a classe
#    Quando abro o navegador
#    E clico em um botão usando a classe
#    E volto para a página anterior
#    Exemplos:
#      |  |
#      |  |
#
#  Esquema do Cenário: Abrir navegador, selecionar RadioButton e validar que ele está selecionado
#    Quando abro o navegador
#    E escolho o radio button "Female"
#    E valido que o radio button "Female" está selecionada
#    Exemplos:
#      |  |
#      |  |
#
#  Esquema do Cenário: Abrir navegador, selecionar Checkbox e validar que ele está selecionado
#    Quando abro o navegador
#    E escolho o checkbox "I have a bike"
#    E valido que o checkbox "I have a bike" está selecionado
#    Exemplos:
#      |  |
#      |  |
#
#  Esquema do Cenário: Abrir navegador, selecionar Dropdown e validar que ele está selecionado
#    Quando abro o navegador
#    E escolho a opção "Saab" no dropdown
#    E valido que a opção "Saab" está selecionada no dropdown
#    Exemplos:
#      |  |
#      |  |

#  Esquema do Cenário: Abrir navegador, selecionar Tab e validar texto exibido
#    Quando abro o navegador
#    E clico no ""
#    Exemplos:
#      |  |
#      |  |