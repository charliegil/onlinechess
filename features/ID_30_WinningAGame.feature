Feature: Winning a Game

  User Story: As a user, I would like to receive a prompt once I have won a game and the opposing player can no longer move their king safely (check-mate)

  Scenario: It is check-mate for the opposing player

  The game should give a prompt message to the player indicating that they have won the game
    Given A user is currently in a game
    When A user check-mates the other player
    Then The user receives a prompt indicating that they have won the game

  Scenario: User wants to win the game, but it is not check-mate

  I should not be able to win the game if it is not check-mate
    Given A user is currently in a game
    When A user wants to win a game, but it is not check-mate yet
    Then The user is not able to win the game until they have check-mated the other player