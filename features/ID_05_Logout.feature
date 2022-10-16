Feature: Logout

  As a user, I would like to logout of my account so I can exit the website.

  Scenario: Logging out from the main menu

    Given I am currently logged in
    Given I am not currently in an online game
    When I select the option to log out
    Then I should be logged out
    And I should be sent to the log in page of the online chess website

  Scenario: Logging out from inside an offline game of chess

    Given I am currently logged in
    Given I am currently playing a game against an offline training bot
    When I select the option to log out
    Then I should be logged out
    And I should be sent to the log in page of the online chess website

  Scenario: Logging out from inside an online game of chess

    Given I am currently logged in
    Given I am currently playing a game against an online opponent
    When I select the option to log out
    Then I should receive a message informing me that by logging out I will be forfeiting the game
    Then I should receive the option to confirm that I would like to log out
    When I confirm that I would like to log out
    Then I should be logged out
    And I should be sent to the log in page of the online chess websitee