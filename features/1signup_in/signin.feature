#fix add Background and move the common steps into that


Feature: User Login
 In order to see my user account
 As a user
 I should be able to login


	Background: 
		Given I am on the Sign In page
		
	Scenario: User Login with valid credentials.
		#fixed - Given I am on the Sign In Page
		Given  I am on the Sign In Page
		When I fill in Email with "email@yahoo.com"
		And I fill in Password with "password"
		And I press "Log In"
		#fixed
		Then I should be on the Home Page
		#fixed
                And I see Welcome Message "Hi Dispname" on top right.

	Scenario Outline: Unsuccessful Log in With Invalid credentials
		Given I am on the Sign in Page
                When I fill in Email "<Email>"
                And I fill in Password "<Password>"
		Then I should see the message "Invalid Username/Password."

        Scenario: User Login With Invalid Username
                  |Email          |Password|
                  |emailyahoo.com |password|

	Scenario: User Login With Invalid Password
                  |Email           |Password|
                  |email@yahoo.com |paword  |

        Scenario: User Login With Invalid Username and Invalid Password		
                  |Email          |Password|
                  |emailyahoo.com |paword  |
