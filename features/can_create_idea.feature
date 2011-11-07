Feature: Can create an idea
  @wip
  Scenario: Create one idea
    Given I can insert an idea in the database
    And I have a page with a form
    When I fill the form in 
    Then I am able to see the idea I created