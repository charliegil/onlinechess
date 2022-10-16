Feature: Moving a Knight

  User Story: As a user, I would like to move a Knight

  Scenario: I want to move a bishop in an L-shape direction (1 square horizontal, 2 squares vertical)

  I should be able to move my bishop in an L-shape direction
    Given A user is currently in a game
    When A user wants to move a bishop in an L-shape direction
    Then The user is able to move the bishop in an L-shape direction

  Scenario: I want to move my knight not in an L-shape direction

  I should not be able to move my knight any other way than in an L-shape direction
    Given A user is currently in a game
    When A user wants to move a knight  diagonally
    Then The user can only move the knight in an L-shape direction, and the system will not let the user do otherwise

  Scenario: A user wants to move a knight in an L-shape direction and eat a piece

  I should be able to move my knight in an L-shape direction and eat a piece
    Given A user is currently in a game
    When A user wants to use a knight to eat a piece
    Then The user can move the knight only in an L-shape direction to eat a piece