Feature: Delete Account

  User Story: As a user, I would like to delete my account.

  Scenario: Delete an account after inputting account information

    I should be able to delete my account after giving my current account information.
    Given A user is logged in to their account
    When the user wants to delete their account and enters valid current parameters "<username>", "<password>" and "<e-mail>"
    Then the account is deleted and it's relations are deleted from the database


  Scenario: Delete an account after inputting wrong account information

    I should not be able to delete my account when I input the wrong account information.
    Given A user is logged in to their account
    When the user wants to delete their account and enters invalid current parameters "<username>", "<password>" and "<e-mail>"
    Then the account is not deleted and an error message appears

  Scenario: Delete an account after inputting empty account information

    I should not be able to delete my account when I do not input any account information.
    Given A user is logged in to their account
    When the user wants to delete their account and enters empty parameters "<username>", "<password>" and "<e-mail>"
    Then the account is not deleted and an error message appears
