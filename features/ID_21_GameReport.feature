Feature: View Game Report

  As a user, I would like to see a report of all moves and their rating at the end of a game, so that I can learn from
  my mistakes.

  Scenario: End Of Game Report
    Given I am in an online or offline game
    When The game concludes
    Then I should be presented with a list of all moves from the past game and their associated move ratings

  Scenario: Report From Game History
    Given I am in the game history
    When I select a given game
    Then I should see be presented with a list of all moves from this game and their associated move ratings

  Scenario: Report From Game History With No Games Played
    Given I am logged in
    Given I have never played an online game
    When I select the game history menu
    Then I should not see any game reports
    And I should be presented with a message saying that no online games have yet been played