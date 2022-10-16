Feature: Moving a Pawn

  User Story: As a user, I would like to move a Pawn

  Scenario: It is the first move of a pawn

    I should be able to move my pawn 1 or 2 squares forward
    Given A user is currently in a game
    When A user wants to move a pawn
    Then The user is able to move the pawn forward 2 squares or 1 square

  Scenario: It is not the first move of a pawn

    I should be able to move my pawn 1 square forward
    Given A user is currently in a game
    When A user wants to move a pawn
    Then The user can only move the pawn 1 square forward, unless it wants to eat a piece

  Scenario: A user wants to use a pawn to eat a piece

    I should be able to move my pawn diagonally to eat a piece
    Given A user is currently in a game
    When A user wants to use a pawn to eat a piece
    Then The user can move the pawn only diagonally to eat a piece
