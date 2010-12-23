Feature: As a user can send the direct messages
	Scenario: As a  user can send the direct message successfully to a single recipient.
		Given I am in Direct Message page.
		When I fill in the username
		And fill in Message.
		And attach a file
		And click Send.
		Then Post the message and list at bottom of the message box.
		And message can be seen by only included user in their "Direct message" page.
	
	Scenario: Send the message to multiple recipient
		Given I am in Direct Message page.
		When I fill in the multiple recipient
		And fill in Message.
		And attach a file
		And click Send.
		And message can be seen by only included user in their "Direct message" page.
	
	Scenario: Send button is disable if "To:" field is blank.
		Given I am in Direct Message page.
		When I left blank the username
		And fill in Message.
		And attach a file
		Then "Send" button should be disable.

	Scenario: Send button is disable if "Message:" field is blank and have no attachment.
		Given I am in Direct Message page.
		When I fill in the username
		And I left blank the Message.
		And not attach a file
		Then "Send" button should be disable.

	Scenario: Send button is enable if "Message:" field is blank and have attachment.
		Given I am in Direct Message page.
		When I fill in the username
		And I left blank the Message.
		And attach a file
		And click Send.
		Then display the message "Message has been sent successfully"


	Scenario: List the direct message in user direct message page
		Scenario: As a user i got the direct message.
			And can view them
			When i goto direct home page.
			Then i can see list of direct message.
			And the message not viewed by me are  in grey shade.
			When i click message text
			Then open the message thread.