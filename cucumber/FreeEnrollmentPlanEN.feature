@i9n
	Feature: Free subscription configuration

	As a course admin
	I want to set free the access to some courses
	So that users get access to the course content freely

	Scenario: configurating the paying mode
	Given I'm creating a new course
	And I'm choosing the subscription price
	When I choose the free option
	Then the course is saved as free

	Scenario: setting the price of a course as zero
	Given I'm creating a new course
	And I'm choosing the subscription price
	And I choose the mensual subscription
	When I set the course price as zero
	Then the course is saved as free

	Scenario: changing the subscription mode from payable to free
	Given I'm in the configuration page of a course
	When I choose the free subscription option
	Then the course is saved as free

	Scenario: changing the subcription mode from payable to free, by filling the price field with zero
	Given I'm in the configuration page of a course
	When I fill the price field with zero
	Then the course is saved as free

	Scenario: change the subscription mode from free to payable
	Given I'm in the configuration page of a course
	When I select the mensual subscription option
	And I fill the price field with a non positive number
	Then the course is saved as payable

	Scenario: Informing user who subscribed to a payable course that it turned to free
	Given a course subscription mode is payable
	When the subscription mode changes to free
	Then a notification is sent to every subscriber to let him know about the change

	
	Scenario: Informing usser who subscribed to a free course that it turned to payable
	Given a course subscription mode is free
	When the subscription mode changes to payable
	Then the access of every subscriber is blocked
	And a notification is sent to let them know about the change

	Scenario: opção de tornar o curso com “Assinatura Mensal” para “Assinatura Gratuita” para todos os usuários cadastrados no curso
	Given eu estou nas configurações de assinatura do curso
	When eu seleciono a opção "Adicionar Bolsistas"
	And seleciono a opção "Selecionar todos os alunos"
	Then todos os alunos matriculados no curso agora possuem uma "Assinatura Gratuita" no mesmo

	Scenario: cadastro de um curso com opção de pagamento “Gratuito”
	Given estou cadastrando um novo curso 
	And estou na fase de escolha do valor da assinatura
	When eu escolho a opção “Assinatura mensal”
	Then um campo para informar o preço é exibido

	Scenario: cadastro de um curso com opção de pagamento “Assinatura Mensal”
	Given estou cadastrando um novo curso 
	And estou na fase de escolha do valor da assinatura
	When eu escolho a opção “Gratuito”
	Then o campo para informar o preço é escondido

	Scenario: I'm trying to create a course without filling the course price field
	Given I'm creating a new course
	And I'm choosing the subscription price
	When I try to go to the next step without filling the price field
	Then an error message is raised : to continue, you need to inform the price of this course


