Feature: View Move Rating

  As a user, I would like to see a rating of a move when I make it, so I can evaluate how well I am playing.

  Scenario: Valid Move Rating
    Given I am in a game against a training bot or an online opponent
    When I play a valid move
    Then I should see a numerical rating of my move

  Scenario: Invalid move rating
    Given I am in a game against a training bot or an online opponent
    When I play an invalid move
    Then I should not see a move rating