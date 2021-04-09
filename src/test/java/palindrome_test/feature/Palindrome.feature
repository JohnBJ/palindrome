Feature: Palindrome
    Background:
    * def BaseUrl = "https://xndev.com/palindrome"
    * def scenario = read('./TestData/scenario.csv')
    * def elements = read('./PageElements/elements.json')
    
    Scenario Outline: Test Palindrome Word <Test-ID>
    Given driver BaseUrl
    When maximize()
    And waitFor(elements.originalWord)
    And input(elements.originalWord,"<word>")
    And screenshot()
    And click(elements.submitButton)
    And screenshot()
    Then match text(elements.palindromeResult) == "<expected-results>"

    Examples:
    |scenario|