Feature: Report Opponent

  As a user, I would like to report my opponent, so that their chat behaviour can be investigated by the developers.

  Scenario: Reporting User From Game
    Given I am in an online game
    When I select the option to report user
    Then The report should be sent to the developers for review
    And I should receive a message confirming that user has been reported

  Scenario: Reporting User From Match History
    Given I am in the match history menu
    Given I am viewing the end of game report for a particular game
    When I select the option to report opponent
    Then The report should be sent to the developers for review
    And I should receive a message confirming that user has been reported

  Scenario: Reporting User From Match History As Banned User
    Given I am in the match history menu
    Given I am viewing the end of game report for a particular game
    Given I am a banned user
    When I select the option to report opponent
    Then I should receive an error message informing me that banned users are not allowed to report
    And No report should be sent to the developers