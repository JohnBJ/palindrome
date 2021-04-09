Feature: Palindrome

  Scenario Outline: Test Palindrome Word
    Given that you go the palindrome test website <https://xndev.com/palindrome>
    When the user enters a <word> into the originalWord input
    And  the user clicks submit button
    Then display <expected-results>

    Examples:
    |Test-ID|word|expected-results         |
    |1      |wow |Yes! wow reversed is wow |
    |2      |pop |Yes! pop reversed is pop |
    |3      |dad |Yes! dad reversed is dad |
    |4      |port|No! port reserved is trop|
    |5      |dot |No! dot reserved is tod  |
    |6      |pot |No! pot reserved is top  |