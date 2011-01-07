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