Feature: As a user can reply or like the messages.

	Scenario: As a user can reply the message.
		Given I login to my account
		And messages are posted on my wall
		When I Click on Reply
		Then a message box get open
		And When I type the message
		And Leave the message box
		Then a reply get post below the message having the name of user who replied
		And thread has started
		And display the text box to reply having text "Write a reply..."

	Scenario: As a user can like the message and share it with my followers
		Given I login to my account
		And messages are posted on my wall
		When I hover the mouse over "Like" 
		Then It tooltip the text "Like this message and share it with your followers"
		When I click "Like"
		Then display an smiley and text "Liked by username" below the message
		And Share the message with the followers