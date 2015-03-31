@i9n

    #Controle
    Feature: Questões argumentativas
        As a professor cadastrado na plataforma
        I want do criar, remover, editar, listar e buscar questões existentes
        So that poderei assim apresenta-las em paginas web mostrando seu conteúdo

    Scenario: nova questão argumentativa
        Given o professor "Alberto" logado no sistema
        And estando na tela das questões argumentativas
        When  o professor cria uma questão argumentativa com enunciado "quem foi Rômulo e remulo"
        Then  salve no sistema a nova questão argumentativa criada

    Scenario: remover questão argumentativa existente
        Given o professor "Alberto" esteja logado no sistema
        And a questão está presente no sistema
        When  o professor deleto a questão com descrição "quem foi Rômulo e remulo"
        Then  ela foi removida do sistema

    Scenario: editar questão argumentativa existente
        Given o professor "Alberto" logado no sistema
        And a questão está presente no sistema
        When  professor modificar o enunciado da questão atual
        Then  será salvo no sistema a atualização dessa questão argumentativa

    Scenario: listar questões argumentativas existentes
        Given que o professor está logado no sistema
        And que tenha no sistema a questão argumentativa "Quem foi romulo e remulo"
        When o professor vejo a lista de questões argumentativas
        Then  minha lista de questões argumentativas contem a questão "Quem foi romulo e remulo"

    Scenario: buscar questões argumentativas existentes
        Given que um professor esta logado no sistema
        And que tenha no sistema a questão argumentativa "Quem foi romulo e remulo"
        When  o professor busca uma questão argumentativa que contem na sua descrição "alguma paralvra chave?"
        Then  a lista de questões argumentativas contem a questão "Quem foi romulo e remulo?" existe no sistema

    #GUI
    Scenario : nova questão argumentativa web
        Given o professor "Alberto" logado no sistema
        And está no menu de questões
        When o professor seleciona a opção "Questão argumentativa" no menu de questões
        And eu selecionar a nova questão argumentativa na página de questões
        Then eu posso preencher os detalhes do questão de artigos

