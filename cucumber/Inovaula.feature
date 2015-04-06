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
  
 Scenario: Editar link presente em uma disciplina no OpenRedu que redireciona para conteúdos do inovaula
    Given Estou logado como “administrador” da disciplina  
    And Estou na pagina de “configurações” da disciplina
    And Desejo editar um link ao conteúdo “Grandezas e Unidades”
    When seleciono a opção “Editar” no menu
    Then se torna possúvel alterar o link que direciona aos conteúdos do Inovaula.
  
  Scenario: Remover link presente em uma disciplina no OpenRedu que redireciona para conteúdos do inovaula.
    Given Estou logado como “administrador” da disciplina  
    And Estou na pagina de “configurações” da disciplina
    When seleciono a opção “Remover” no menu, será exibida uma janela de confirmação de exclusão
    And quando clico em confirmar
    Then o link será removido da disciplina.
  
  Scenario:  Remoção de links sem estar logado como administrador da disciplina
    Given Eu não estou logado como “Administrador”
    When Tento acessar pagina de configurações da disciplina no OpenRedu
    Then será exibida uma mensagem de erro “Você não tem as permissões necessárias para realizar esta ação”
  
  Scenario:  Clicar na opção “Conteúdos”
    Given  Estou na pagina da disciplina “Grandezas e Unidades”
    When eu clico na opção “Conteúdos auxiliares”
    Then Uma nova guia é aberta no navegador
    And sou direcionado a pagina de conteúdos do inovaula relacionados a disciplina.
	
 Scenario:	Clicar na opcão "Sugestão"
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
	
 

