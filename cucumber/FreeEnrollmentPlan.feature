@i9n
	Feature: configuração de assinatura gratuita

	As a administrador de curso
	I want to disponibilizar cursos de forma gratuita
	So that os usuários podem consumir conteúdo sem custo o conteúdo do curso

	Scenario: configuração do modo de pagamento do curso
	Given estou cadastrando um novo curso 
	And estou na fase de escolha do valor da assinatura
	When eu escolho a opção “Gratuito”
	Then os usuários podem fazer a assinatura do curso sem efetuar o pagamento.

	Scenario: cadastro de um curso com preço zero
	Given estou cadastrando um novo curso 
	And estou na fase de escolha do valor da assinatura
	And eu escolho a opção “Assinatura mensal”
	When eu digito o preço como zero
	Then a opção de pagamento do curso é salva como “Gratuito”

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
