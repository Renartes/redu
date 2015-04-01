Feature: Integration with Inovaula

  Redu should consume the Inovaula API to augment its functionalities.

  Scenario: Link accounts
    Given I am a "Teacher" with an account on Inovaula
    And I am logged in Redu as a "Teacher"
    Then I should be able to link my accounts

  Scenario: Unlink account
    Given I am a "Teacher" with a linked account on Inovaula
    And I am logged in Redu as a "Teacher"
    And I have no "Class" "in progress"
    Then I should be able to unlink my account

  Scenario: List contents available on Inovaula
    Given I am a "Student"
    And I am in a class about "Physics"
    Then I should be able to answer exams on the subject from Inovaula
    But I should not be able to get the answers

  Scenario: Find a teacher for a class
    Given I am interested in an unavailable "Class"
    Given that exists a "Teacher" with material on the subject on Inovaula
    Then I should be able to fire a class planning notification to a "Teacher"
