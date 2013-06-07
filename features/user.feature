@javascript
Feature: User Test
  In order to login
  As a user
  I want to be able to test the user

  Scenario: Starting at the Home Page, sign up
    Given I am on the home page
    Then I should see "Welcome to Goals"
    When I click on the link "Sign up"
    Then I should see "Email"
    And I should see "Username"
    And I should see "Password"
    And I should see "Password confirmation"
    And I fill in "Email" with "jacob@hotmail.com"
    And I fill in "Username" with "testing"
    And I fill in "Password" with "testing123"
    And I fill in "Password confirmation" with "testing123"
    When I click on the button "Sign up"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: I want to be able to add a new goal and step
    Given I am logged in as a user
    When I click on the link "Your Goals"
    Then I should see "testing's current goals"
    When I click on the link "New Goal"
    And I make a new goal and step
    Then I should see "Goal was successfully created."
    And I should see "Goal: Web Developer"
    And I should see "Learn Ruby on Rails"


