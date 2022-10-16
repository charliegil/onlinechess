Feature: Start game against offline computer

  As a user, I would like to start a match against a training bot, so I can improve before playing against real
  opponents.

  Scenario: Starting a game against a training bot
    Given I am logged in
    When I select the option to start a game against a training bot
    Then I should be placed in a game against the computer

  Scenario: Starting a game without internet connection
    Given I am logged in
    Given I have lost internet connection
    When I select the option to start a game against a training bot
    Then I should be placed in a game against the computer

  Scenario: Attempting to start a game while being banned
    Given I am logged in
    Given I have been banned
    When I select the option to start a game against a training bot
    Then I should be placed in a game against the computer