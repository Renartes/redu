@i9n

#Controle

Feature: Respostas das Quest√µes Argumentativas
    As a usu√°rio esteja logado no sistema
    I want listar e adicionar respostas e  listar quest√µes
    So that possa responder e analisar as quest√µes dissertativas
  
Scenario: listar quest√µes respondidas 
    Given que o sistema tenha a quest√£o respondida "Fa√ßa um cen√°rio"
    And o usu√°rio esteja logado como aluno
    When ele ver a sua lista de quest√µes 
    Then a lista ir√° conter "Fa√ßa um cen√°rio"

Scenario: listar questoes que n√£o foram respondidas  
    Given que o sistema tenha a quest√£o n√£o respondida "Fa√ßa uma feature"
    And o usu√°rio esteja logado como aluno
    When ele ver a sua lista de quest√µes 
    Then a lista ir√° conter "Fa√ßa uma feature"

Scenario: responder logado como professor
    Given que as quest√µes s√≥ podem ser respondidas pelos alunos
    And o professor esteja logado
    When estiver na p√°gina de quest√µes dissertativas
    Then n√£o ir√° aparecer as quest√µes para serem respondidas

#GUI

Scenario: aparecer questoes para responder 
    Given que esteja logado como aluno
    And esteja no menu de quest√µes dissertativas
    And a questao "Criar um feature" n√£o foi respondida
    Then a quest√£o "Criar um feature" ir√° aparecer na tela

Scenario: listar questoes respondidas  
    Given que o aluno esteja logado
    And o sistema contenha a quest√£o respondida "Como criar seu GitHub"
    And esteja no menu de quest√µes dissertativas
    When selecionar a aba de quest√µes respondidas
    Then a lista ir√° conter "Como criar seu GitHub"

Scenario: listar respostas dos alunos
    Given que o professor esteja logado
    And esteja no menu de quest√µes dissertativas
    And seleciona a aba de quest√µes respondidas
    When seleciona a op√ß√£o de ver as respostas dos alunos
    Then a lista contem todas as respostas dos alunos

#Controle
Scenario: adicionar uma resposta 
	Given que o aluno esteja logado no sistema
	And tenha questıes dissertativas para serem respondidas 
	When ele adicionar uma resposta para a quest„o
	Then a resposta ser· salva no sistema 

Scenario: listar respostas dos alunos
	Given que o professor esteja logado no sistema 
	And a quest„o "O que È Branch ?" j· foi respondida 
	When professor vizualizar a lista 
	Then ir· conter na lista a resposta da quest„o "O que È 	Branch?"
#GUI
Scenario: responder questıes
	Given aluno esteja logado no sistema
	And esteja na aba de questıes n„o respondidas
	When o aluno preencher a resposta da quest„o 
	And selecionar o bot„o de enviar 
	Then a resposta ser· armazendada no sistema

Scenario: listar questıes n„o respondidas 
	Given aluno esteja logado no sistema
	And est· no menu de questıes dissertativas
	When ele seleciona a aba de questıes n„o respondidas
	Then ver· a lista de todas as questıes n„o respondidas

#Erro
Scerario: enviar resposta em branco 
	Given aluno respondeu uma quest„o
	And deixa todo o campo de resposta em branco 
	When aluno tenta enviar quest„o
	Then quest„o n„o ser· salva no sistema


   