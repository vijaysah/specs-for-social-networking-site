Feature: Can view the poll list
In Order to view the existing poll
As a user
I want to view the poll listing

	Background: Logged in
	Given I am logged in
	
	Scenario: Successfully view the poll listing
		When i click poll
		Then view the poll listing including question, author, open date, close date
		And view the tick marked against the poll that I voted on
		And "end" button to close the poll
		And delete button corresponding to poll created by me