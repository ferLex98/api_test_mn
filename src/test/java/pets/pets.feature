Feature: Test de APIs de una petshop

  Background:
    * def urlBase = 'https://petstore.swagger.io'
    * def petsPath = '/v2/pet'
    * def petId = 60
    * def createPetBody = read('./createPet.json')

  Scenario: Agregar una nueva mascota
    Given url urlBase + petsPath
    And request createPetBody
    When method POST
    Then status 200
    And match response.id == petId
    And match response.name == "Romi"

  Scenario: Consultar la mascota ingresada por ID
    Given url urlBase + petsPath + '/' + petId
    When method GET
    Then status 200
    And match response.id == petId
#
  Scenario Outline: Actualizar nombre y estado “sold” de la mascota
    Given url urlBase + petsPath
    And request {"id": <id>, "category": { "id": <category.id>, "name": <category.name> }, "name": <name>, "status": <status>}
    When method PUT
    Then status 200
    And match response.id == petId
    And match response.name == "Romina Collete"
    And match response.status == "sold"

    Examples:
      | read('updatePet.csv') |

  Scenario: Buscar mascota por id y estado: "sold"
    Given url urlBase + petsPath + '/findByStatus?status=sold'
    When method GET
    Then status 200
    And match response[*].id contains 60
