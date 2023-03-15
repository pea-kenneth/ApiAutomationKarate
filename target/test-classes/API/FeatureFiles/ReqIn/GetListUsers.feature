Feature: Get All booking

  Background: Initialize stuff
    Given url apiService
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    * def name = Name

  Scenario: Get All booking @/booking
    Given path '/users?page=1'
    When method get
    Then status 200
    And print response
    And match response.data[0].name == name
