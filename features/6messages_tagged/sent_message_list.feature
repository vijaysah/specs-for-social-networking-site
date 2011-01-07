Feature: View the list of sent message or reply
In order to view the list of messages which I posted or in which i replied
As a User
I want to see the Sent list

	Background: I am looged in as user
	Scenario: View the message thread which i posted or in which i replied
	   
	   When I follow "Sent"
	   Then I see the list of last 20 message thread which i posted or in which i replied excluding private message

	Scenario: Sent message list is blank
	   When I follow the "Sent"
	   Then I see the message "You have not sent any message."