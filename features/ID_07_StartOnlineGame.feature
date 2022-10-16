Feature: Start game against online player

  As a user, I would like to start an online match against a real player.

  Scenario: Starting online game
    Given I am logged in
    When I select the option to start an online game
    Then I should be put in a queue to find an opponent
    Then I should be able to see how long I have been waiting for a game
    When I am connected to an opponent
    Then I should enter a game against an opponent

  Scenario: Starting online game after losing connection
    Given I am logged in
    Given I have lost internet connection after logging in
    When I select the option to start an online game
    Then I should receive an error message informing me that I must reestablish my connection
    And I should not be placed into the queue

  Scenario: Starting online game without finding opponent
    Given I am logged in
    When I select the option to start an online game
    Then I should be put in a queue to find an opponent
    Then I should be able to see how long I have been waiting for a game
    When No opponent has been found after 5 minutes
    Then I should be removed from the queue
    And I should receive a message informing me that no opponent could be found

  Scenario: Attempting to start an online game while being banned
    Given I am logged in
    Given I am banned
    When I select the option to start an online game
    Then I should receive an error message informing me of the status and cause of my ban
    And I should not be placed in the queue
