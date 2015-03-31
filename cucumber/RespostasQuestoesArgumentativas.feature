@i9n

#Controle

Feature: Respostas das Questões Argumentativas
    As a usuário esteja logado no sistema
    I want listar e adicionar respostas e  listar questões
    So that possa responder e analisar as questões dissertativas
  
Scenario: listar questões respondidas 
    Given que o sistema tenha a questão respondida "Faça um cenário"
    And o usuário esteja logado como aluno
    When ele ver a sua lista de questões 
    Then a lista irá conter "Faça um cenário"

Scenario: listar questoes que não foram respondidas  
    Given que o sistema tenha a questão não respondida "Faça uma feature"
    And o usuário esteja logado como aluno
    When ele ver a sua lista de questões 
    Then a lista irá conter "Faça uma feature"

Scenario: responder logado como professor
    Given que as questões só podem ser respondidas pelos alunos
    And o professor esteja logado
    When estiver na página de questões dissertativas
    Then não irá aparecer as questões para serem respondidas

#GUI

Scenario: aparecer questoes para responder 
    Given que esteja logado como aluno
    And esteja no menu de questões dissertativas
    And a questao "Criar um feature" não foi respondida
    Then a questão "Criar um feature" irá aparecer na tela

Scenario: listar questoes respondidas  
    Given que o aluno esteja logado
    And o sistema contenha a questão respondida "Como criar seu GitHub"
    And esteja no menu de questões dissertativas
    When selecionar a aba de questões respondidas
    Then a lista irá conter "Como criar seu GitHub"

Scenario: listar respostas dos alunos
    Given que o professor esteja logado
    And esteja no menu de questões dissertativas
    And seleciona a aba de questões respondidas
    When seleciona a opção de ver as respostas dos alunos
    Then a lista contem todas as respostas dos alunos

   