import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"

Given("open newtours application", ()=>{
    cy.visit("https://demo.guru99.com/test/newtours")
})

/*
When("provide valid {string} and {string}", (userName, password)=>{
    cy.title().should('eq', 'Welcome: Mercury Tours')
    cy.get('[name = userName]').type(userName)
    cy.get('[name= password]').type(password)
})
*/

When("I log in as Following", (datatable)=>{
    datatable.hashes().forEach(element => {
        cy.get('[name = userName]').type(element.userName)
        cy.get('[name= password]').type(element.password)
    });
})

Then("click on submit button", ()=>{
    cy.get('[name = submit]').click()
})

And("verify title should be {string}", (title)=>{
    cy.title().should('eq', title)
})