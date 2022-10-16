Feature: View Rules

  As a user, I would like to view the rules of chess, so that I can learn how to play.

  Scenario: View Rules From Main Menu
    Given I am logged in
    Given I am in the main menu
    When I select the option to view rules
    Then I should see a list of rules

  Scenario: View Rules In Offline Game
    Given I am logged in
    Given I am in a game against a training bot
    When I select the option to view rules
    Then I should see a list of rules

  Scenario: View Rules In Online Game
    Given I am logged in
    Given I am in a game against an online opponent
    When I select the option to view rules
    Then I should see a list of rules