Feature: Add a friend

  User Story: As a user, I would like to send friend requests to other players that I meet online.

  Scenario: I want to add someone that I just played against

  I should be able to add people I played against when I view my play history
    Given A user is currently logged in
    When A user wants to add a friend
    Then The user is able to click a button which sends a friend request

  Scenario: I want to accept a friend request that another player sent me

  A prompt should pop up within 10 seconds of the friend request being sent, and the user should be able to accept it
    Given A user is currently logged in
    When A user wants to accept a friend request
    Then The user is able to click a button which adds the other player to their list of friends

  Scenario: I want to add a friend I have not yet played against

  I should be able to search my friend's username up, and add them
    Given A user is currently logged in
    When A user wants to search for a friend and add them
    Then The user is able to search for the friend and send them a friend request