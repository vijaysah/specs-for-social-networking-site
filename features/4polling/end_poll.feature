Feature: Can end the poll
 In Order to no one can poll from now
 As a user
 I want to end the poll 

	Background: Logged in
	Given I am logged in
	And I am viewing poll listing

	Scenario: Successfully end the poll
		When i click "end"
		Then display the message "Poll has been ended"                                                                                                                                                                                                                    