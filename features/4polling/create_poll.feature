Feature: Can Start poll
In order to take a view of other 
As a user
I want to start  poll
	
	Background: Logged in
	Given I am logged in
	
	Scenario: Successfully start the poll
		When I click on Poll
		And I fill in "My first Poll" in "Question"
		And I fill in "Ans A" in "Answer A"
		And I fill in "Ans B" in "Answer B"
		And I fill in "Ans C" in "Answer C"
		And I attach a file
		And I click "Update"
		Then all the user in group get the email "Usrnm started a poll"
		And in every group user profile there is a marker on poll showing the number of poll currently exist.
		And list the Poll in group user poll list.

	Scenario: Start a poll without question
		When I click on Poll
		And I left blank the field "Question"
		And I fill in "Ans A" in "Answer A"
		And I fill in "Ans B" in "Answer B"
		And I fill in "Ans C" in "Answer C"
		And I attach a file
		And I click "Update"
		Then see the message "What's your question" field is required
		And highlight the border of the field.

	Scenario: Start a poll without Answer
		When I click on Poll
		And I fill in "My first Poll" in "Question"
		And I left blank the "Answer A"
		And I left blank the "Answer B"
		And I left blank the "Answer C"
		And I attach a file
		And I click "Update"
		Then see the message "At least 2 Answer are required"
		And highlight the border of the field.

	Scenario: Start a poll with single Answer
		When I click on Poll
		And I fill in "My first Poll" in "Question"
		And I fill the"Ans A" in "Answer A"
		And I left blank the "Answer B"
		And I left blank the "Answer C"
		And I attach a file
		And I click "Update"
		Then see the message "At least 2 Answer are required"
		And highlight the border of the field.

	Scenario: Attach a file of less than 5 MB.
		When I click on Poll
		And I fill in "My first Poll" in "Question"
		And I fill in "Ans A" in "Answer A"
		And I fill in "Ans B" in "Answer B"
		And I fill in "Ans C" in "Answer C"
		And I attach a file of less than 5 MB
		And I click "Update"
		Then all the user in group get the email "Usrnm started a poll"
		And in every group user profile there is a marker on poll showing the number of poll currently exist.

	Scenario: Attach a file of more than 5 MB.
		When I click on Poll
		And I fill in "My first Poll" in "Question"
		And I fill in "Ans A" in "Answer A"
		And I fill in "Ans B" in "Answer B"
		And I fill in "Ans C" in "Answer C"
		And I attach a file of more than 5 MB
		And I click "Update"
		Then display the message "Max 5MB file can be attached"
		And group get the email "Usrnm started a poll"
		And in every group user profile there is a marker on poll showing the number of poll currently exist.

	Scenario: Attach a file of more than 5 MB.
		When I click on Poll
		And I fill in "My first Poll" in "Question"
		And I fill in "Ans A" in "Answer A"
		And I fill in "Ans B" in "Answer B"
		And I fill in "Ans C" in "Answer C"
		And I attach a file of more than 5 MB
		And I click "Update"
		Then display the message "Max