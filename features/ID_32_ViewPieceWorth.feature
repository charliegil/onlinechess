Feature: View Piece Worth

  User Story: As a user, I would like to view how many points each piece is worth within 10 seconds

  Scenario: I want to view how many points each piece is worth within 10 seconds

  A prompt should pop up showing each piece and how much it is worth. The prompt should take max 10 seconds to pop up.
    Given A user is currently logged in
    When A user wants to view each piece's worth
    Then The user is able to click a button which shows the worth of each piece

  Scenario: I want to view how many points each piece is worth during a game

  A prompt should pop up showing each piece and how much it is worth. The prompt should take max 10 seconds to pop up.
    Given A user is currently logged in
    When A user wants to view each piece's worth
    Then The user is able to click a button which shows the worth of each piece

  Scenario: I want to change the worth of a piece

  I should not be able to change the worth of a piece
    Given A user is currently logged in
    When A user wants to change the worth of a piece
    Then The user is unable to change the piece's worth