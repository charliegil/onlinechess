Feature: Select Training Bot Difficulty

  As a user, I would like to select the difficulty of my computer opponent, so that I can tailor the difficulty of the
  game to my skill level.

  Scenario: Select Unlocked Difficulty
    Given I am in a game against a training bot
    When I select the option to change bot difficulty
    Then I should be presented with a list of all difficulties
    When I select an unlocked difficulty
    Then The difficulty of my opponent should change to the selected difficulty

  Scenario: Select Locked Difficulty
    Given I am in a game against a training bot
    When I select the option to change bot difficulty
    Then I should be presented with a list of all difficulties
    When I select a locked difficulty
    Then I should receive an error message that the selected difficulty is not available
    Then I should be presented with a list of all difficulties

  Scenario: Cancel Selecting Difficulty
    Given I am in a game against a training bot
    When I select the option to change bot difficulty
    Then I should be presented with a list of all difficulties
    When I exit the difficulty selection
    Then The difficulty of my opponent should remain unchanged

