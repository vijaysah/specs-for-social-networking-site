Feature: View the list of message liked by me
In order to see the list of message liked by me or by other user
As a User
I want to see Liked List or message are tagged with the user liked them
	Background: I am logged in as user
	Scenario: View the message thread in which i liked
	   When I follow "Like"
	   Then I see the list of last 20 message thread which i Liked


	Scenario: Liked message list is empty
	   When I follow the "Like"
	   Then I see the message "You haven't liked any messages yet."

	Scenario: View the message with the smiley if they are liked by any user
	   When i Viewing the message liked by any user
	   Then i see the smiley icon and message "Liked by username" below the message