Feature: Losing a Game

  User Story: As a user, I would like to receive a prompt once I have lost a game and I can no longer move their king safely (check-mate)

  Scenario: It is check-mate for me

  The game should give a prompt message to the player indicating that they have lost the game
    Given A user is currently in a game
    When A user gets check-mated by the other player
    Then The user receives a prompt indicating that they have lost the game

  Scenario: User wants to lose the game, but it is not check-mate (without conceding)

  I should not be able to lose the game if it is not check-mate
    Given A user is currently in a game
    When A user wants to lose a game, but it is not check-mate yet
    Then The user is not able to lose the game until they have been check-mated by the other player or they concede