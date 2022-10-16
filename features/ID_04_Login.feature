Feature: Login

  As a user, I would like to login to my account so I can enter the website.

  Scenario: Login using an existing account, with correct username and password

    Given I am currently logged out
    When I input my username and password correctly
    Then I should enter the online chess website
    And I should see a greeting message

  Scenario: Login using an existing account, with incorrect password

    Given I am currently logged out
    When I input my username correctly and my password incorrectly
    Then I should receive an error message informing me of the incorrect password
    And I should not enter the online chess website

  Scenario: Login using a non-existent account

    Given I am currently logged out
    When I input a username and password for an account that has not been created yet
    Then I should receive an error message informing me that the account does not exist
    And I should not enter the online chess website