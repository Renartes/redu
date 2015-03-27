@i9n
	#Controle
    Feature: Questões argumentativas
        As a professor cadastrado na plataforma
        I want do criar, remover, editar, listar e buscar questões existentes
        So that eu poderei assim apresenta-las em paginas web mostrando seu conteúdo
    Scenario: nova questão argumentativa
        Given o professor "Alberto" logado no sistema
        And estando na tela das questões argumentativas
        When  eu crio uma questão argumentativa com enunciado "quem foi Rômulo e remulo"
        Then  salve no sistema a nova questão argumentativa criada
	Scenario: remover questão argumentativa existente
        Given o professor "Alberto" logado no sistema
        And a questão está presente no sistema
        When  eu deleto a questão com descrição "quem foi Rômulo e remulo"
        Then  remova a questão com descrição "quem foi Romulo e remulo"
    Scenario: editar questão argumentativa existente
        Given o professor "Alberto" logado no sistema
        And a questão está presente no sistema
        And e no sidio da pagina da questão em especifica
        When  eu modificar o enunciado da questão atual
        Then  salve no sistema a atualização dessa questão argumentativa
	
	Scenario: listar questões argumentativas existentes
        Given algum usuario esta logado no sistema
		And que tenha no sistema a questão argumentativa "Quem foi romulo e remulo"
        When  eu vejo a lista de questões argumentativas
        Then  minha lista de questões argumentativas contem a questão "Quem foi romulo e remulo"
		
	Scenario: buscar questões argumentativas existentes
        Given algum usuario esta logado no sistema
		And que tenha no sistema a questão argumentativa "Quem foi romulo e remulo"
        When  eu busco um questão argumentativa que contem na sua descrição "alguma paralvra chave"
        Then  minha lista de questões argumentativas contem a questão "Quem foi romulo e remulo" existe no sistema
	#GUI
	
	Scenario : nova questão argumentativa web
		Given o professor "Alberto" logado no sistema
		And está no menu de questões
		When eu seleciono a opção "Questão argumentativa" no menu de questões
		And eu selecionar a nova questão argumentativa na página de questões
		Then eu posso preencher os detalhes do questão de artigos
	
	