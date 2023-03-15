Feature: Get All booking

  Background: Initialize stuff
    Given url apiService
    And header Content-type = 'application/json'
    And header Accept = 'application/json'


  Scenario: Get All booking @/booking
    Given path '/users/200'
    When method get
    Then status 404
    And print response

