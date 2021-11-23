Feature: Testar as operações presentes em Fake Rest API

Background: Executa antes de cada teste.
    * def url_base = "https://fakerestapi.azurewebsites.net/"
    * def request_json = read('novo_autor.json')
    * def request_json2 = read('nova_atividade.json')
    * def request_json3 = read('nova_capa.json')

@vetor
Scenario: Utilizar da função GET para verificar se o retorno é em formato de vetor e se os formatos de pageCount (number) e title (String) estão corretos 
    Given url url_base
    And path 'api/v1/Books/'
    When method get
    Then status 200
    And match $ == '#[]'
    And match each $ contains {title: '#string', pageCount: '#number'}
  
@new_autor
Scenario: Utilizar da função POST para adicionar um novo autor e verificar se ele foi inserido corretamente
    Given url url_base
    And path '/api/v1/Authors'
    And request request_json
    When method post
    Then status 200
    And match $.id == 591
    And match $.idBook == 635
    And match $.firstName == "Antônio"
    And match $.lastName == "Victor"

@new_ativ
Scenario: Utilizar da função POST para criar uma nova atividade (causará erro devido a um erro no preenchimento do Json)
    Given url url_base
    And path '/api/v1/Activities'
    And request request_json2
    When method post 
    Then status 200

@att_capa
Scenario: Utilizando da função PUT para atualizar as informações da foto de capa de id 5 e verificando as novas informações.
    Given url url_base
    And path '/api/v1/CoverPhotos/5'
    And request request_json3
    When method put
    Then status 200
    And match $.id == 5
    And match $.idBook == 41
    And match $.url == "https://www.atelie.com.br/site/wp-content/uploads/2018/01/a-capa-do-livro-brasileiro.jpg"

@tamanho
Scenario: Utilizando da função GET para ver se o tamanho do objeto 1 de User é igual a 4 (causará erro devido a ao tamanho do objeto/response)
    Given url url_base
    And path '/api/v1/Users/1'
    When method get 
    And match karate.sizeOf(response) == 4
    Then status 200

@del
Scenario: Utilizando da função DELETE para excluir o livro de ID = 3
    Given url url_base
    And path 'api/v1/Books/3'
    When method delete 
    Then status 200

    

    