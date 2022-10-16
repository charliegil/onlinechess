Feature: Cancel Move Against Computer

  As a user, I would like to cancel a move when playing against the computer, so that I can make a better move.

  Scenario: Cancelling a single turn
    Given I am in a game against a training bot
    When I select the option to return to my previous turn once
    Then The game should be restored to the state of my previous turn

  Scenario: Cancelling multiple turns
    Given I am in a game against a training bot
    When I select the option to return to my previous turn twice
    Then The game should be restored to the state of two previous turns