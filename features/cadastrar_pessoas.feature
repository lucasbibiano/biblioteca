Feature: Cadastrar pessoas

  Como: Como administrador
  Eu quero: Cadastrar alguém
  Para que: Esse alguém possa usar o sistema

  Background:
    Given Existe um admin
    Given Eu estou logado como admin
    And Eu estou na página de cadastro de pessoas

  Scenario: Cadastrar pessoa (caminho feliz)
    When Eu preencho os campos de cadastro de pessoa
    And Eu envio o formulario de cadastro de pessoa
    Then Eu devo ver a mensagem '"Fulano" foi cadastrado no sistema'
    And "lucasbibiano@outlook.com" deve receber um email