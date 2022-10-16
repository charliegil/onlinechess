Feature: Edit Account

  User Story: As a user, I would like to edit my account information

  Background:
    Given an online Chess system exists
    Given the following users exist in the system:
      | username | password | e-mail |
      | Name     | Pass     | x@gmail.com |

  Scenario Outline: Edit an account with valid parameters
    Given A user is logged in to their account
    When the user updates their account with valid parameters "<username>", "<password>" or "<e-mail>"
    Then the updated parameters are persisted to the database

    Examples:
      | username | password | e-mail |
      | Name2 | Pass2 | xx@gmail.com |
      | Basel | IamKing | basel@gmail.com |

  Scenario Outline: Edit an account with invalid parameters
    Given A user is logged in to their account
    When the user updates their account with invalid parameters "<username>", "<password>" or "<e-mail>"
    Then the updated parameters are not persisted to the database
    And an error message is shown

    Examples:
      | username | password | e-mail | error |
      | Basel | IamKing |            | "the e-mail field cannot be empty" |

  Scenario Outline: Edit an account with the same current parameters
    Given A user is logged in to their account
    When the user updates their account with the same parameters that they currently have "<username>", "<password>" or "<e-mail>"
    Then the updated parameters are not persisted to the database
    And an error message is shown

    Examples:
      | username | password | e-mail | error |
      | Basel | IamKing |            | "your e-mail is already *enter e-mail*" |
