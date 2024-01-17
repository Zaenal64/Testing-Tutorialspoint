Feature: Newtours Validation

Scenario: Home Page
  Given open newtours application
  When provide valid 'mercury' and 'mercury'
  Then click on submit button
  And verify title should be 'Login: Mercury Tours'