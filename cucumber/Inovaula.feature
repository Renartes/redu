Feature: Integration with Inovaula

  Redu should consume the Inovaula API to augment its functionalities.

  Scenario: Link accounts
    Given I am a "Teacher" with an account on Inovaula
    And I am logged in Redu as a "Teacher"
    Then I should be able to link my accounts

  Scenario: Unlink account
    Given I am a "Teacher" with a linked account on Inovaula
    And I am logged in Redu as a "Teacher"
    And I have no "Class" "in progress"
    Then I should be able to unlink my account

  Scenario: List contents available on Inovaula
    Given I am a "Student"
    And I am in a class about "Physics"
    Then I should be able to answer exams on the subject from Inovaula
    But I should not be able to get the answers

  Scenario: Find a teacher for a class
    Given I am interested in an unavailable "Class"
    Given that exists a "Teacher" with material on the subject on Inovaula
    Then I should be able to fire a class planning notification to a "Teacher"
  
 Scenario: Editar link presente em uma disciplina no OpenRedu que redireciona para conte�dos do inovaula
    Given Estou logado como �administrador� da disciplina  
    And Estou na pagina de �configura��es� da disciplina
    And Desejo editar um link ao conte�do �Grandezas e Unidades�
    When seleciono a op��o �Editar� no menu
    Then se torna poss�vel alterar o link que direciona aos conte�dos do Inovaula.
  
  Scenario: Remover link presente em uma disciplina no OpenRedu que redireciona para conte�dos do inovaula.
    Given Estou logado como �administrador� da disciplina  
    And Estou na pagina de �configura��es� da disciplina
    When seleciono a op��o �Remover� no menu, ser� exibida uma janela de confirma��o de exclus�o
    And quando clico em confirmar
    Then o link ser� removido da disciplina.
  
  Scenario:  Remo��o de links sem estar logado como administrador da disciplina
    Given Eu n�o estou logado como �Administrador�
    When Tento acessar pagina de configura��es da disciplina no OpenRedu
    Then ser� exibida uma mensagem de erro �Voc� n�o tem as permiss�es necess�rias para realizar esta a��o�
  
  Scenario:  Clicar na op��o �Conte�dos�
    Given  Estou na pagina da disciplina �Grandezas e Unidades�
    When eu clico na op��o �Conte�dos auxiliares�
    Then Uma nova guia � aberta no navegador
    And sou direcionado a pagina de conte�dos do inovaula relacionados a disciplina.
	
 Scenario:	Clicar na opc�o "Sugest�o"
	Given I Am a "Student"
	When I Am logged in Redu as a "Student"
	And I click on the tab "Random contents"
	Then I go to a page with a random redu's article.
	
 Scenario: Unlink accounts
	Given I am a "Teacher" with an account on Inovaula
    And I am logged in Redu as a "Teacher"
	When I click in Menu "Settings"
    And I can choose the option "Unlink accounts"
	Then the the accounts can be unlinked
	
Scenario: View the historic
	Given I am a "Student" with an account on Inovaula
	And I am logged in my account
	When I select the option "Historic" on my menu
	Then I have access on my searches historic
	
Scenario:  My favorites 
	Given I am a "Student" with an account on Inovaula
	And I am logged in my account
	When I select the option "Favorite" on my menu
	Then I have access on my favorites contents on Inovaula from the most searched to the less
	
 

