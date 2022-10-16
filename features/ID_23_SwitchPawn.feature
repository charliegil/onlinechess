Feature: Switch Pawn for a piece of my choice

  User Story: As a user, if one of my pawns reaches the last row opposite to me, I should be able to switch that pawn for a piece of my choice.

  Scenario: A pawn of a user, successfully reaches the last row opposite to them

    I should be able to switch the pawn for a piece of my choice
    Given A user is currently in a game
    When A user's pawn reaches the last row opposite to them
    Then The user is able to switch the pawn for the piece of their choice

  Scenario: A pawn of a user, does not successfully reach the last row opposite to them and the user wants to switch the pawn for another piece

    I should not be able to switch the pawn for a piece of my choice
    Given A user is currently in a game
    When A user's pawn does not reach the last row opposite to them
    Then The user is not able to switch the pawn for the piece of their choice

  Scenario: A piece that is not a pawn of user, successfully reaches the last row opposite to them

    I should not be able to switch the pawn for a piece of my choice
    Given A user is currently in a game
    When A piece that is not a pawn of user reaches the last row opposite to them
    Then The user is not able to switch the pawn for the piece of their choice

