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

	Scenario: Tentou criar curso sem definir tipo de assinatura
	Given estou cadastrando um novo curso
	And estou na fase de escolha da assinatura
	When eu tento avançar na criação do curso sem escolher a assinatura
	Then aparece uma mensagem de erro “Para avançar, é necessário escolher uma opção de assinatura para este curso”

	Scenario: Modificar assinatura de um curso que possui “Assinatura Mensal” para “Assinatura Gratuita”
	Given estou na página de configurações da assinatura de um curso
	When eu seleciono a opção de assinatura do curso para “Gratuito”
	Then o curso é alterado para “Assinatura Gratuita”

	Scenario: Modificar assinatura de um curso que possui “Assinatura Mensal” para “Assinatura Gratuita”, dado que escolheu preço zero
	Given estou na página de configurações da assinatura de um curso
	When eu preencho com 0 (zero) o valor do curso
	Then o curso é alterado para “Assinatura Gratuita”

	Scenario: Modificar assinatura de um curso que possui “Assinatura Gratuita” para “Assinatura Mensal”
	Given estou na pagina de configurações de assinatura de um curso
	When eu seleciono a opção assinatura mensal
	And eu preencho o valor do curso
	Then o curso é alterado para “Assinatura Mensal”

	Scenario: Avisa aos usuários cadastrados em um curso que possui “Assinatura Mensal”, que seu curso agora possui uma “Assinatura Gratuita”
	Given que um curso tem Assinatura Mensal
	When o curso é alterado para “Assinatura Gratuita”
	Then notifica todos os usuários cadastrados naquele curso sobre a modificação da assinatura

	
	Scenario: Avisa aos usuários cadastrados em um curso que possui “Assinatura Gratuita”, que seu curso agora possui uma “Assinatura Mensal”
	Given que um curso teve sua assinatura modificada para “Mensal”
	Then boqueia o acesso de todos os usuários cadastrados naquele curso
	And notifica todos os usuários cadastrados naquele curso sobre a modificação da assinatura

	Scenario: opção de tornar um curso com “Assinatura Mensal” para “Assinatura Gratuita” apenas para usuários específicos
	Given eu estou nas configurações de assinatura do curso
	When eu seleciono a opção “Adiconar Bolsistas”
	And seleciono os alunos bolsistas
	Then os alunos selecionados terão “Assinatura Gratuita”

	Scenario: opção de tornar o curso com “Assinatura Mensal” para “Assinatura Gratuita” para todos os usuários cadastrados no curso
	Given eu estou nas configurações de assinatura do curso
	When eu seleciono a opção "Adicionar Bolsistas"
	And seleciono a opção "Selecionar todos os alunos"
	Then todos os alunos matriculados no curso agora possuem uma "Assinatura Gratuita" no mesmo

	Scenario: criar “Promoção” por um período de tempo
	Given eu estou nas configurações de assinatura curso
	When eu seleciono a opção “Promoção”
	And eu preencho o tempo da promoção
	And a porcentagem da promoção
	Then o curso fica com desconto na sua assinatura

	Feature: assinatura de um curso gratuito
	As a usuário comum
	I want to assinar um curso gratuito
	So that eu posso consumir sem custo o conteúdo do curso

	Scenario: assinatura de um curso
	Given estou me cadastrando em um curso
	And o curso selecionado foi cadastrado como “Gratuito”
	When eu confirmo a inscrição no curso
	Then a inscrição é automaticamente aprovada

	Scenario: assinatura de um curso anteriormente “Gratuito”
	Given estou inscrito em um curso que está configurado como “Gratuito”
	When a configuração de pagamento é mudada para “Assinatura Mensal”
	Then eu posso escolher entre cancelar o curso ou pagar a mensalidade

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