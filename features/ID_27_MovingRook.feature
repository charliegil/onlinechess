Feature: Moving a Rook

  User Story: As a user, I would like to move a Rook

  Scenario: I want to move a rook horizontally

  I should be able to move my rook horizontally as many squares as I like
    Given A user is currently in a game
    When A user wants to move a rook horizontally
    Then The user is able to move the rook horizontally as many squares as they like, as long as it is not blocked by another piece

  Scenario: I want to move a rook vertically

  I should be able to move my rook vertically as many squares as I like
    Given A user is currently in a game
    When A user wants to move a rook vertically
    Then The user is able to move the rook vertically as many squares as they like, as long as it is not blocked by another piece

  Scenario: A user wants to move a rook horizontally and eat a piece

  I should be able to move my rook horizontally and eat a piece
    Given A user is currently in a game
    When A user wants to use a rook to eat a piece
    Then The user can move the rook only horizontally or vertically to eat a piece