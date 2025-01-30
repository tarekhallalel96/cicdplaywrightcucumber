Feature: OrangeHRM Login

  @valid
  Scenario: Successful login
    Given I open the login page
    When I login with username "Admin" and password "admin123"
    Then I should be redirected to the dashboard

  @invalid
  Scenario: Failed login with wrong credentials
    Given I open the login page
    When I login with username "Admin" and password "wrongpassword"
    Then I should see an error message
