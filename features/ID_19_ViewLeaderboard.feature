Feature: View Leaderboard

  As a user, I would like to see a leaderboard of players, so that I can compare my skill level to other players.

  Scenario: View Leaderboard
    Given I am logged in
    When I select the option to see leaderboard
    Then I will see a list of all players in descending order of skill rating

  Scenario: View Unpopulated Leaderboard
    Given I am logged in
    Given No players have skill ratings yet
    Then I will see an empty list