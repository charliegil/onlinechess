Feature: Message Opponent During Game

  As a user, I would like to be able to send and receive messages with my opponent during a game, so that we can
  communicate.

  Scenario: Sending Appropriate Message
    Given I am in a game against an online opponent
    When I send an appropriate message to my opponent
    Then My opponent should be notified and receive my message

  Scenario: Sending Inappropriate Message
    Given I am in a game against an online opponent
    When I send an inappropriate message to my opponent
    Then I should receive a message informing me that inappropriate language is not allowed
    And My opponent should not receive my message

  Scenario: Receiving Message
    Given I am in a game against an online opponent
    When My opponent sends me a message
    Then I should be notified that I have received a message
    And The message should be displayed