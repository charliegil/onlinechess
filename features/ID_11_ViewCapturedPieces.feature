Feature: View Captured Pieces

  As a user, I would like to view the captured pieces during a piece, so that I can have a better idea of which player
  has an advantage.

  Scenario: View Captured Pieces Against Training Bot
    Given I am in a game against a training bot
    Given Pieces have been captured
    Then I should be able to see a list of my and my opponents captured pieces

  Scenario: View Captured Pieces Against Online Opponent
    Given I am in a game against an online opponent
    Given Pieces have been captured
    Then I should be able to see pieces I captured from my opponent

  Scenario: View Captured Pieces At Beginning of Game
    Given I am in a game
    Given No pieces have been captured yet
    Then I should not be able to see any captured pieces

