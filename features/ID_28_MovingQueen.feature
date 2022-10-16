Feature: Moving a Queen

  User Story: As a user, I would like to move a Queen

  Scenario: I want to move a Queen horizontally

  I should be able to move my Queen horizontally as many squares as I like
    Given A user is currently in a game
    When A user wants to move a Queen horizontally
    Then The user is able to move the Queen horizontally as many squares as they like, as long as it is not blocked by another piece

  Scenario: I want to move a Queen vertically

  I should be able to move my Queen vertically as many squares as I like
    Given A user is currently in a game
    When A user wants to move a Queen vertically
    Then The user is able to move the Queen vertically as many squares as they like, as long as it is not blocked by another piece

  Scenario: I want to move a Queen diagonally

  I should be able to move my Queen diagonally
    Given A user is currently in a game
    When A user wants to move a Queen diagonally
    Then The user can move the Queen diagonally as many squares as they like, as long as it is not blocked by another piece