Feature: View List of Moves During Game

  As a user, I would like to be able to see a list of the moves that were played during the game, so I can remember how
  the game progressed.

  Scenario: View Moves Against Bot
    Given I am in a game against a training bot
    Given at least one turn has passed
    When I select the option to view my past moves
    Then I should be presented with a list of mine and my opponents past moves in order of occurrence

  Scenario: View Moves Against Online Opponent
    Given I am in a game against an online opponent
    Given at least one turn has passed
    When I select the option to view my past moves
    Then I should be presented with a list of mine and my opponents past moves in order of occurrence

    Scenario: View Moves In New Game Against bot
      Given I am in a game against a training bot
      Given No turns have passed
      When I select the option to view my past moves
      Then I should not be presented a list of moves
      And I should receive a message informing me that no moves have passed

  Scenario: View Moves In New Game Against Online Opponent
    Given I am in a game against a training bot
    Given No turns have passed
    When I select the option to view my past moves
    Then I should not be presented a list of moves
    And I should receive a message informing me that no moves have passed