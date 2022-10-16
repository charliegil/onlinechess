Feature: View Game History

  As a user, I would like to view my match history so I can track my performance.

  Scenario: View Game History From a New Account

    Given I am logged in
    Given I have not played any games yet
    Given I am not in the middle of a game
    When I select the option to view match history
    Then I should not see anything

  Scenario: View Game History

    Given I am logged in
    Given I have played at least 1 game
    Given I am not in the middle of a game
    When I select the option to view match history
    Then I should see a list of my past games, including the outcome of the game and the username of the opponent


