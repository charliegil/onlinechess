Feature: Invite a friend to play a game

  User Story: As a user, I would like to invite a friend to play a game against me.

  Scenario: I want to invite a friend of mine to play a game against me

  I should be able to go into my list of friends and invite my friend to a game against me
    Given A user is currently logged in
    When A user wants to invite a friend to play a game
    Then The user is able to click a button which invites the friend

  Scenario: I want to accept a friend's request to play a game against them

  A prompt should pop up within 10 seconds of the invite being sent, and the user should be able to accept it
    Given A user is currently logged in
    When A user wants to accept an invite from a friend
    Then The user is able to click a button which accepts the invite from the other friend, and their game begins

  Scenario: I want to invite a player to play with me that is not my friend

  I should not be able to invite a player to play a game against me unless they are my friend
    Given A user is currently logged in
    When A user wants to play a game against a play that is not in their friend's list
    Then The user is unable to send an invite request to a player that is not their friend