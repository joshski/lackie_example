Feature: Remote Control Log

  In order to know that my remote control works
  As a person with a remote control
  I want to see log messages corresponding to button presses
  
  Scenario Outline: Pressing button logs command name to screen
    
    Given I have opened the application
    When I press the <command> button
    Then I should see "Pressed <command>" on the screen
    
    Examples:
      | command |
      | up      |
      | down    |
      | left    |
      | right   |
      | select  |