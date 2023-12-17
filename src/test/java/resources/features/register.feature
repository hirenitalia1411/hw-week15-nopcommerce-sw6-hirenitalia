@regression
Feature: Register
  In Order to perform successful registration
  As a User
  I have to enter all the required field data

  @author_Hiren_Italia @sanity @smoke
  Scenario: User should navigate to register page successfully
    Given I am on homepage
    When I click on register link
    Then I should navigate to register page successfully and verify the text "Register"

  @author_Hiren_Italia @smoke
  Scenario: User should get mandatory field message
    Given I am on homepage
    When I click on register link
    And I click on register button
    Then I should get error message for first name required "First name is required."
    And I should get error message for last name required "Last name is required."
    And I should get error message for email required "Email is required."
    And I should get error message for password required "Password is required."
    And I should get error message for confirm password required "Password is required."

  @author_Hiren_Italia
  Scenario: User should create account successfully
    Given I am on homepage
    When I click on register link
    And I click on radio button against male
    And I enter first name "om"
    And I enter last name "patel"
    And I select day for DOB "14"
    And I select month for DOB "November"
    And I select year for DOB "1999"
    And I enter email for registration
    And I enter password for registration "abcd123"
    And I enter confirm password for registration "abcd123"
    And I click on register for registration
    Then I should get registration completion message "Your registration completed"
