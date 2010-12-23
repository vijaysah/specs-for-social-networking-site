Feature: List the direct message in user direct message page
	Scenario: As a user i got the direct message.
		And can view them
		When i goto direct home page.
		Then i can see list of direct message.
		And the message not viewed by me are  in grey shade.
		When i click message text
		Then open the message thread.