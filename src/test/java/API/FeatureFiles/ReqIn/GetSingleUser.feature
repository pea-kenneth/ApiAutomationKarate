Feature: Get single user

  Background: Initialize stuff
    Given url apiService
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    * def singleUsername = SingleUserFirstName

  Scenario: Get All booking @/booking
    Given path '/users/2'
    When method get
    Then status 200
    And print response
    And match response.data.first_name == singleUsername
