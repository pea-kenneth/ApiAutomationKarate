Feature: Authentication

  Background: Initialize
    Given url apiService
    And header Content-type = 'application/json'

#    POST Payload
    * def requestPayload =
    """
    {
    "name": "morpheus",
    "job": "leader"
    }
    """


#    PUT Payload
    * def putPayload =
    """
    {
    "name": "morpheus",
    "job": "zion resident"
}
    """


  Scenario: Create User
    Given path 'api/users'
    And request requestPayload
    When method post
    Then status 201
    And print response

    * def id = response.id
    * print 'created id is: ', id


  Scenario: Update User
    Given path 'api/users/id'
    And request putPayload
    When method put
    Then status 200
    And print response


  Scenario: Delete User
    Given path 'api/users/id'
    When method delete
    Then status 204
    And print response