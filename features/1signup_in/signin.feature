#fix add Background and move the common steps into that


Feature: User Login
 As a user
 I should be able to login

	Background: 
		Given I am on the Sign In page
		
	Scenario: User Login with valid credentials.
		#fix - Given I am on the Sign In Page
		Given  I gone to the Sign In Page
		When I fill in Email with "email@yahoo.com"
		And I fill in Password with "password"
		And I click on Login
		#fix Then I should be on the Home page
		Then I should see the Home Page
		#fix And I should see "Hi Dispname"
		And Welcome Message "Hi Dispname" on top right.

	Scenario: User Login With Invalid emailid
		Given I gone to the Sign in Page
		When I fill in Email with "emailyahoo.com"
		And I fill in Password with valid "password"
		#fix And I should see
		Then I should see the message "Invalid Username/Password."

	Scenario: User Login With Invalid Password
		Given I gone to the Sign in Page
		When I fill in Email with "email@yahoo.com"
		And I fill in Password with invalid "password"
		#fix And I should see
		Then I should see the message "Invalid Username/Password."

	Scenario: User Login With Invalid Username and Invalid Password
		Given I gone to the Sign in Page
		When I fill in Email with "emailyahoo.com"
		And I fill in Password with invalid "password"
		#fix And I should see
		Then I should see the message "Invalid Username/Password."


