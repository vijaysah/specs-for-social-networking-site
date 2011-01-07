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