@i9n
    Feature: Questões argumentativas
        As a professor cadastrado na plataforma
        I want do criar, remover, editar, listar e buscar questões que eu tenha publicado
        So that eu poderei assim apresenta-las em paginas web mostrando seu conteúdo

    Scenario: nova questão argumentativa
        Given estando o professor "Alberto" logado no sistema
        And estando na tela das questões argumentativas
        When  eu crio uma questão argumentativa com enunciado "quem foi Rômulo e remulo"
        Then  salve no sistema a nova questão argumentativa criada

    Scenario: editar questão argumentativa
        Given estando o professor "Alberto" logado no sistema
        And estando a questão no sistema
        And estando na pagina da questão em especifica
        When  eu modificar o enunciado da questão atual
        Then  salve no sistema a atualização dessa questão argumentativa