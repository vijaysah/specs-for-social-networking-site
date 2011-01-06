Feature: Can view the members
In order to view my followers and and the member to whom i am following
As a user I can list the member

	Background: Logged in as a user

	Scenario: View the member list.
		When I follow "Members"
		Than I see the list of member in my network
		And member name, designation
		And joined on date
		And number of followers
		And number of messages
		
