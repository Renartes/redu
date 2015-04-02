@i9n
	Feature: assinatura de um curso gratuito
	
	As a usuário comum
	I want to assinar um curso gratuito
	So that eu posso consumir sem custo o conteúdo do curso

	Scenario: assinatura de um curso
	Given estou me cadastrando em um curso
	And o curso selecionado foi cadastrado como “Gratuito”
	When eu confirmo a inscrição no curso
	Then a inscrição é automaticamente aprovada

	Scenario: cancelamento de um curso
	Given estou inscrito em um curso
	When eu escolho cancelar o curso
	Then a inscriçao é cancelada

	Scenario: mudança da configuraçao de um curso
	Given estou inscrito em um curso
	And a configuração de pagamento é mudada para “Assinatura Mensal”
	Then minha inscriçao é bloqueada


	Scenario: cancelamento de um curso anteriormente “Gratuito”
	Given estou inscrito em um curso que está configurado como “Gratuito”
	And a configuração de pagamento é mudada para “Assinatura Mensal”
	When eu escolho cancelar o curso
	Then minha inscrição nesse curso é cancelada

	Scenario: pagamento de um curso anteriormente “Gratuito”
	Given estou inscrito em um curso que está configurado como “Gratuito”
	And a configuração de pagamento é mudada para “Assinatura Mensal”
	And eu escolho pagar a mensalidade
	When meu pagamento é confirmado
	Then minha inscrição nesse curso é desbloqueada

