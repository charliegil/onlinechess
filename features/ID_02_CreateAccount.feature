Feature: Creating Account

  User Story: As a user, I want to create an account

  Background:
    Given an online Chess system exists
    Given the following users exist in the system:
      | username | password | e-mail |
      | Name     | Pass     | x@gmail.com |

  Scenario Outline: Creating a new account with valid parameters
    Given a user creates an account with valid "<e-mail>", "<username>", "<password>"
    When the user submits their account information
    Then the account and its parameters are persisted to the database with the given information "<e-mail>", "<username>", "<password>"

    Examples:
    | username | password | e-mail |
    | Name2 | Pass2 | xx@gmail.com |
    | Basel | IamKing | basel@gmail.com |

  Scenario Outline: Not filling out one of the 3 fields
    Given a user does not fill out one of the 3 parameters
    When the user submits their account information
    Then an "<error>" message is shown, and the account is not persisted to the database

    Examples:
    | username | password | e-mail | error |
    | Basel | IamKing |            | "the e-mail field cannot be empty" |

  Scenario Outline: Creating a new account with the same e-mail as another account
    Given A user has already created an account with "X" email
    When they try to create a new account with the same "X" email
    Then an "<error>" message is raised and the account is not persisted to the database

    Examples:
      | username  | password | e-mail | error |
      | Basel | IamKing | basel@gmail.com | "there is an account already registered under this username" |