Feature: View Player Skill Rating

  As a user, I would like to view my skill rating, so that I can know my skill level.

  Scenario: View Player Rating On Old Account
    Given I am logged in
    Given I have played at least one game against an online opponent
    When I select the option to view my account information
    Then I should be able to see my skill rating

  Scenario: View Player Rating On New Account
    Given I am logged in
    Given I have not yet played a game against an online opponent
    When I select the option to view my account information
    Then I should not be able to see my skill rating
    And I should be able to see a message informing me that I must play at least one online game to have a rating

  Scenario: View Player Rating On Banned Account
    Given I am logged in
    Given I am banned
    When I select the option to view my account information
    Then I should not be able to see my skill rating
    And I should be able to see a message informing me that I am banned
