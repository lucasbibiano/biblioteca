Feature: Gerenciar autores

  Como: Como administrador
  Eu quero: Cadastrar um autor
  Para que: Esse possa ser marcado como autor de um livro

  Background:
    Given Existe um admin
    Given Eu estou logado como admin
    And Eu estou na página de cadastro de autores

  Scenario: Cadastrar autor
    When Eu preencho os campos de cadastro de autor
    And Eu envio o formulario de cadastro de autor
    Then Eu devo ver a mensagem 'Autor criado com sucesso.'

  Scenario: Atualizar autor
    Given Os seguintes autores existem:
    | name         |
    | Lorem Ipsum  |
    When Eu preencho os campos de cadastro de autor
    And Eu envio o formulario de cadastro de autor
    Then Eu devo ver a mensagem 'Autor criado com sucesso.'

  Scenario: Apagar autor
    When Eu preencho os campos de cadastro de autor
    And Eu envio o formulario de cadastro de autor
    Then Eu devo ver a mensagem 'Autor criado com sucesso.'