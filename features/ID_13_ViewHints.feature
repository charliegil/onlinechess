Feature: View Hints Against Computer

  As a user, I would like to view a hint about what to play during my turn when playing against the computer,
  so that I can know what to play when I am stuck.

  Scenario: View Hint During Turn
    Given I am in a game against a training bot
    Given It is my turn
    When I select the option to view a hint
    Then I should be able to see the optimal move

  Scenario: View hint during opponents turn
    Given I am in a game against a training bot
    Given It is the training bots turn
    When I select the option to view a hint
    Then I should receive an error message