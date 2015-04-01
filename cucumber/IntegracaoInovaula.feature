Feature: Integração do sistema Openredu e Inovaula
	As a Usuário do Openredu
	I want to poder associar os conteúdos da disciplina que estou estudando no OpenRedu à 
	conteúdos de mesma área presentes no Inovaula  so that poder linkar esses conteúdos relacionados 
	a uma disciplina.

Scenario: Nova disciplina
	Given	Que o usuário está registrando a disciplina “Grandezas e Unidades”
	When	Ele estiver preenchendo os campos, terá um campo para ele linkar um plano de aula relacionado ao tema “Grandezas e Unidades”
	Then	Ele preencherá esse campo com o link do Inovaula e os usuários que procurarem aquela disciplina terão acesso a esse link para auxiliar nos seus estudos

Scenario: Disciplina já existente
	Given	Que o usuário está estudando o assunto “Grandezas e Unidades”
	When	O usuário procurar o plano de aula do tema “Grandezas e Unidades” e quiser modificar este plano, ele poderá enviar uma solicitação anônima para o autor 
		daquela aula para modificar o plano existente.
	Then	O autor receberá um email avisando da solicitação, que será avaliada e aceita/não aceita.

Scenario: Planos Sugeridos
	Given	Que um usuário está estudando o assunto “Grandezas e Unidades”
	When	O usuário estiver procurando o plano de aula dessa disciplina
	Then	Ele encontrará também os planos sugeridos por outros usuários. 

Scenario: Votação de planos Sugeridos
	Given 	Ques um usuário está estudando o assunto “Grandezas e Unidades”
	When	O usuário estiver olhando os planos de aula sugeridos relacionados a essa disciplina
	Then	Ele poderá visualizar esses planos e dar “upvote” nos planos de aula que ele achar que são bons para o estudo daquela disciplina. Os que tiverem mais 
		upvotes serão listados mais a frente do que os que tiverem menos upvotes.

Scenario: Sugestão de planos novos
	Given	Que um usuário está estudando o assunto “Grandezas e Unidades”
	When	O usuário achar que um plano de aula do inovaula é bom para os alunos estudarem 
	Then	Ele poderá linkar esse plano a esta disciplina. Esse plano ficará na aba “planos sugeridos” que cada disciplina terá e estará sujeito a votação dos 
		outros usuários



Scenario: Sugestão de planos duplicados
	Given	Que um usuário está estudando o assunto “Grandezas e Unidades”
	When	O usuário tentar sugerir um plano já existente
	Then	Ele receberá uma notificação avisando que o plano de aula já está linkado a aquela disciplina
