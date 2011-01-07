Feature: Bookmarked
In order to mark any message
As a User
I want to bookmarked the message

	Background: I am logged in as user
	Scenario: Bookmark the message
	   When I hover the mouse over "More" corresponding to any message
	   Then I see the options "Bookmark"
	   When I press the "BookMark"
	   Then I see the message "Message has been bookmarked"

	Scenario: Unbookmark the message 
	   When I hover the mouse over "More" corresponding to any bookmarked message
	   Then I see the options "Unbookmark"
	   When I press the "UnbookMark"
	   Then I see the message "The bookmark was removed" 