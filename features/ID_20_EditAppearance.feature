Feature: Edit Chess Board and Pieces Appearance

  As a user, I would like to change the appearance of the chess board and pieces, so that I can customize them to my
  liking.

  Scenario: Edit Chess Board Appearance From Main Menu
    Given I am logged in
    Given I am in the main menu
    When I select the option to change board appearance
    Then I should be presented with a list of boards
    When I select a board
    Then My board appearance should be updated

  Scenario: Edit Chess Board Appearance In Online Game
    Given I am logged in
    Given I am in an online game
    When I select the option to change board appearance
    Then I should receive an error message telling me that board appearance cannot be modified during online games

  Scenario: Edit Piece Appearance In Offline Game
    Given I am logged in
    Given I am in a game against a training bot
    When I select the option to change piece appearance
    Then I should be presented with a list of piece styles
    When I select a piece style
    Then My piece style should be updated