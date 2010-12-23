Feature: As a User Post the message.

	Scenario: As a User can post the message on my wall.
		Given I logged in as user.
		When i write the text in the message box
		And I click "Post"
		Then Message get post on my wall page.
		And Message get post on the wall of user in my group


	Scenario: Post the message of zero length
		Given I logged in as user.
		When i type the whitespace in the message box
		And I click "Post"
		Then see the error message insert text.






		


	