Feature: Newtours Validation

Scenario: Home Page
  Given open newtours application
  When I log in as Following
    |userName| password |
    |mercury | mercury  |
  Then click on submit button
  And verify title should be 'Login: Mercury Tours'