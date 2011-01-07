Feature: Can mention the user while giving reply
In order to mention the user
As a user
I want to mention the username while giving reply or posting a message
	Background:I am logged in as user
	Scenario: Mention the username while posting a message
	   When I type the character "@"
	   Then i see the message "Start typing username to see the options" below message box
	   When I select the username
	   And I press update
	   Then message get post on wall
	   And message start with "@mentioned_username, message"

	Scenario: Mention the username while giving reply of any post 
	   When typing reply
	   And I type the character "@"
	   Then i see the message "Start typing username to see the options" below message box
	   When I select the username
	   And I press update
	   Then reply get post on wall
	   And message start with "@mentioned_username, reply message"