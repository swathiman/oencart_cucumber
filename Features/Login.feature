Feature: Login with Valid Credentials

  @sanity @regression
  Scenario: Successful Login with Valid Credentials
    Given the user navigates to login page
    When user enters email as "manne.swathi@yahoo.com" and password as "ourindia"
    And the user clicks on the Login button
    Then the user should be redirected to the MyAccount Page
    
@regression
  Scenario Outline: Login Data Driven
    Given the user navigates to login page
    When user enters email as "<email>" and password as "<password>"
    And the user clicks on the Login button
    Then the user should be redirected to the MyAccount Page

    Examples:
      | email                  | password |
      | manne.swathi@yahoo.com | ourindia |
      | pavanol@gmail.com      | test123  |
