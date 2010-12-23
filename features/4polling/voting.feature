Feature: Can vote for the poll
  In order to give my view
  As a user
  I want to vote for the poll

	Background: Logged in
		Given I am logged in
		And in poll listing

	Scenario: Can vote for the poll
		When I click on poll
		Then I see the Bar graph of poll result
		When I select the option
		And write the comment
		And click submit
		Then I see my vote in the top in voting list
		And I see the comment
		And see the updated bar graph of poll result