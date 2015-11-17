Feature: Common template for Cucumber feature files
  As a user
  I am templating the scenarios
  So test features can be reused

#Background:

  Scenario Outline: Listing all the scenario steps
    #Just setting it up
    Given I launch the app

    #Actual content starts

    #Navigation
    Then I should see the "<name>" page

    #Page Scroll
    When I scroll to the <option> of the page

    #Element including images
    Then I should <visibility> element with id "<value>"
    When I select element with id "<value>"

    #Buttons
    Then I should <visibility> the "<label>" button with id "<value>"
    When I select the "<label>" button with id "<value>"
    Then I should see the "<label>" button with id "<value>" is <condition>
    Then I should see the "<label>" button with id "<value>" has "<style_value>" style

    #Text
    Then I should <visibility> "<string>"
    When I select the "<label>" text
    Then I should see "<string>" <position> text with id "<string>"
    And I should not see the text with id "<value>"

    #Textbox
    When I enter "<string>" in the "<textbox_name>" textbox with id "<string>"
    Then I should <visibility> the "<textbox_name>" textbox with id "<string>"
    And the "<textbox_name>" textbox with id "<value>" has style "<value>"
    And the "<textbox_name>" textbox with id "<value>" is <condition>

    #dropdown
    And I select ".*" for the dropdown named ".*"
    Then I should <visibility> the "<dropdown_name>" dropdown with id "<string>"
    When I select ".*" for the "<dropdown_name>" dropdown with id "<string>"
    Then I should see ".*" selected the "<dropdown_name>" dropdown with id "<string>"

    #Checbox/Radio button
    Then I see the "<element_name>" <type> with id "<value>" is <condition>
    Then I <selection> the "<element_name>" <type> with id "<value>"
    And the "<element_name>" <type> with id "<value>" should be <condition>

    #Dialog box
    Then I should <visibility> dialog box
    When I select any area outside of the dialog

    #Lists
    Then I should <visibility> a "<string>" for the "<name>" list item with id "<string>"
    When I select the "<string>" option for the "<name>" list item with id "<string>"

    Examples:
    | visibility | position  | type         | condition    | selection | option |
    | see        | preceding | checkbox     | enabled      | select    | top    |
    | not see    | following | radio button | disabled     | unselect  | bottom |
    |            |           |              | selected     |           |        |
    |            |           |              | not selected |           |        |
    
  Scenario: Feature steps on different projects to click a button
    When I touch the photo in the banner
    When I touch "save"
    When I log in
    When I select the asthma journal button via dashboard
    When I select the Cancel button on the popup
    When I select the Next button on the invite page


