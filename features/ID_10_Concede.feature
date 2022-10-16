Feature: Concede Game

  As a user, I would like to be able to concede the game, so that I can exit a game in progress whenever I choose.

  Scenario: Conceding a game against an online opponent
    Given I am in a game against an online opponent
    When I select the option to concede
    Then I should receive a message informing me that by conceding the game I will lose and return to main menu
    Then I should receive a prompt to confirm that I would like to concede
    When I confirm that I would like to concede
    Then I should lose the game
    And I should be sent to the main menu

  Scenario: Cancelling concede against an online opponent
    Given I am in a game against an online opponent
    When I select the option to concede
    Then I should receive a message informing me that by conceding the game I will lose and return to main menu
    Then I should receive a prompt to confirm that I would like to concede
    When I cancel the concede
    Then I should remain in the game

  Scenario: Conceding a game against a training bot
    Given I am in a game against a training bot
    When I select the option to concede
    Then I should lose the game
    And I should be sent to the main menu
