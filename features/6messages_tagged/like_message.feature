Feature: Liked message
In order to show that i like the message
As a user
I want to tag them Like

	Background: I am logged in as user
	Scenario: Like the message	
	   When I press "Like" corresponding to any message
	   Then I see the smiley and text "Message liked by you" below the message
	   

	Scenario: Unlike the message 
	   When I press "Unlike" corresponding to any liked message
	   Then the smiley get removed from the bottom of the message
	   And the text "Message liked by you" get removed from below the message
	   

Feature: View the list of message liked by me
In order to see the list of message liked by me
As a User
I want to see Liked List
	Background: I am logged in as user
	Scenario: View the message thread in which i liked
	   When I follow "Like"
	   Then I see the list of last 20 message thread which i Liked


	Scenario: Liked message list is empty
	   When I follow the "Like"
	   Then I see the message "You haven't liked any messages yet."

Feature: Message is liked by other user
In order to know that message is liked by other user
As a User
I want see the smiley and text saying "message is liked by username" below the message or reply

	Background: I am logged in as a user
	Scenario: View the message with the smiley if they are liked by any user
	   When i Viewing the message liked by any user
	   Then i see the smiley icon and message "Liked by username" below the message