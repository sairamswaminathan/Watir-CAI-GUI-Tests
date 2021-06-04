Feature: CAI Functional GUI Testing

  Scenario: Login to cai.sap.com and check whether the Signin Options is displayed

    Given I login to cai
    When I click on OK button
    Then "Sign in" is displayed
    And "Create" is displayed
    And "Link"  is displayed
    And "Sign up" is displayed

  Scenario: Validate the home page of CAI

    Given Signin is displayed
    When Signin button is clicked
    Then Username is displayed
    And Bots are displayed
    And Organizations are displayed
    And Collaborations are displayed
    And NewBot button is displayed

  Scenario: Create a new bot

    Given NewBot button is displayed
    When NewBot button is clicked
    And Normal bot flow is clicked
    And "Greetings" Skill is selected
    And "Weather" Skill is selected
    And "Small Talk" Skill is selected
    And botname "newbotfortesting" is entered
    And "Non-personal" is selected
    And Store Conversation data is selected
    And "Non-vulnerable" is selected
    And "Public" is selected
    And Create button is clicked
    Then "newbotfortesting" is created

  Scenario: Load the newly created bot

    Given "newbotfortesting" is created
    When "newbotfortesting" is clicked
    Then "newbotfortesting" is loaded

