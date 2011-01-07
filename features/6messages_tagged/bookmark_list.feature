Feature: View the list of bookmarked message
In order to view the message that has been bookmarked by me
As a User
I want to see the list of bookmarked message

	Background: I am logged in as user
	Scenario: View the bookmarked message list
	   When I follow the "Bookmarked"
	   Then I see the list of last 20 bookmarked messages in chronological order
 
	Scenario: Bookmark list is empty
	   When I follow the "Bookmarked"
	   Then I see the message "You have no bookmarked messages"