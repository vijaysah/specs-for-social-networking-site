Feature: Can view the poll result
 In order to see the vote
 As a User
 I want to see the poll result

	Background: Logged in
		Given I am logged in
		And in poll list

	Scenario: Can view the poll result
	  	When I click on poll question
	  	Then I see the comments by the user on their vote.
                And the tick marked against the bar for the option I voted for. 
