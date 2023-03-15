Feature: Authentication

  Background: Initialize Restful Booker
    Given url apiService
    And header Content-type = 'application/json'

#    PUT Payload
    * def requestPayload =
    """
    {
    "name": "morpheus",
    "job": "zion resident"
}
    """


  Scenario: Update User
    Given path 'api/users/808'
    And request requestPayload
    When method put
    Then status 200
    And print response
