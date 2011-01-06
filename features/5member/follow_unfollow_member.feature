Feature: Can follow or unfollow the user
	
	Background: Logged in as  user.

	Scenario:User can follow the member
		When I follow "Members"
		And I click "Follow" corresponding to the member
		Then "Follow" get replaced by "Unfollow"
		And list the member under "People I'm following"


	Scenario:User can unfollow the member
		When I press member member
		And I follow "People I'm Following" page
		And press "Unfollow" corresponding to user to whom I unfollow
		Then the user should get removed from the "People I'm following" list
		And show the "Follow" button corresponding to that user in "EveryOne" list



