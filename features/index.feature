Feature: View the homepage

  Scenario: I visit the homepage
    Given I visit "/"
    When I look at the page
    Then The title should be "Home"
    And I should see the Navigation


