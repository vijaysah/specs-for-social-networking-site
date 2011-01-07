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




Feature: View the list of message thread in which i am mentioned
In order to view the message in which I am mentioned by other user
As a User
I want to see the mentions message list

	Background: I am logged in as user
	Scenario: View the message thread in which i am mentioned by other user
	   When I follow "@Mentions"
	   Then I see the list of last 20 message thread which i am mentioned excluding private message


	Scenario: Mentioned message list is empty
	   When I follow the "@mentions"
	   Then I see the message "You are not mentioned in any messages."