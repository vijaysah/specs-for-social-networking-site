Feature: User Sign up
	
	Scenario: User Login with new email id.
		
		Given I gone to the Sign Up page
		When I fill in  Email id with "email@yahoo.com"
		And I fill in Password with "pwd"
		And I fill in Confirm Password with "password"
		And I fill in Display Name with "Dispname"
		And I check  Email Notification
		And I fill in Birthday with "12/10/1984".
		And I fill Word verification(captcha)
		And I check the "Acceptance of Terms"
		And I click on "Continue".
		Then I see the Dashboard
		And I see the message "Congratulations Dispname".
	
	Scenario: User Signup with non-unique email id.
		
		Given I gone to the Sign Up page
		When I fill in  Email id with "email@yahoo.com"
		And I fill in Password with "pwd"
		And I fill in Confirm Password with "password"
		And I fill in Display Name with "Dispname"
		And I check  Email Notification
		And I fill in Birthday with "12/10/1984".
		And I fill Word verification(captcha)
		And I check the "Acceptance of Terms"
		And I click on "Continue".
		Then I see the message "Email id already exist."

	Scenario: User Signup with invalid format email id.
		
		Given I gone to the Sign Up page
		When I fill in  Email id with "emailyahoo.com"
		And I fill in Password with "pwd"
		And I fill in Confirm Password with "password"
		And I fill in Display Name with "Dispname"
		And I check  Email Notification
		And I fill in Birthday with "12/10/1984".
		And I fill Word verification(captcha)
		And I check the "Acceptance of Terms"
		And I click on "Continue".
		Then I see the message "Email id is incorrect"


