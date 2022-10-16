Feature: Castling

  User Story: As a user, I would like to switch my King and my Rook's position

  Scenario: I move my King 2 spaces towards the Rook I am castling with

  I should be able to switch my King and Rook's position
    Given A user is currently in a game
    When A user wants to switch their king and rook's position
    Then The user is able to switch the position of their king and their rook

  Scenario: I move my King 1 space towards the Rook I am castling with

  I should not be able to switch my King and Rook's position
    Given A user is currently in a game
    When A user wants to switch their king and rook's position
    Then The user is unable to switch the position of their king and their rook

  Scenario: I want to castle, but there is a piece between my king and my rook

  I should not be able to switch my King and Rook's position
    Given A user is currently in a game
    When A user wants to switch their king and rook's position
    Then The user is unable to switch the position of their king and their rook