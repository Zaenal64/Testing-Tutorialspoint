Feature: Newtours Validation

Background: 
  Given open newtours application

@smoke @sanity
Scenario: Home Page
When provide valid 'mercury' and 'mercury'
  Then click on submit button
  And verify title should be 'Login: Mercury Tours'


@regression
  Scenario: Verifying my Title
  When provide valid 'mercury' and 'mercury'
  Then click on submit button
  And verify title should be 'Login: Mercury Tours'