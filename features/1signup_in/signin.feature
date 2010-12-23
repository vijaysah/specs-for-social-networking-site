Feature: User Login	
	Scenario: User Login with valid credentials.
		Given  I gone to the Sign In Page
		When I fill in Email with "email@yahoo.com"
		And I fill in Password with "password"
		And I click on Login
		Then I should see the Home Page
		And Welcome Message "Hi Dispname" on top right.

	Scenario: User Login With Invalid emailid
		Given I gone to the Sign in Page
		When I fill in Email with "emailyahoo.com"
		And I fill in Password with valid "password"
		Then I should see the message "Invalid Username/Password."

	Scenario: User Login With Invalid Password
		Given I gone to the Sign in Page
		When I fill in Email with "email@yahoo.com"
		And I fill in Password with invalid "password"
		Then I should see the message "Invalid Username/Password."

	Scenario: User Login With Invalid Username and Invalid Password
		Given I gone to the Sign in Page
		When I fill in Email with "emailyahoo.com"
		And I fill in Password with invalid "password"
		Then I should see the message "Invalid Username/Password."


