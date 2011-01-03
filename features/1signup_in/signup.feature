Feature: User Sign up
In order to create my user account
As a new user
I should be able to sign up

        Scenario: User Sign Up with unique email id.
		
		Given I am on Sign Up page.
                When I fill in the following
                |Email Id           |email@yahoo.com |
                |Password           |password        |
                |Confirm Password   |password        |
                |Display Name       |Dispname        |
                |Email Notification |true            |
                |Birthday           |12/10/1984      |
                |Acceptance of Terms|true            |
		And I press "Continue".
		Then I see the Dashboard
		And I see the message "Congratulations Dispname".
	
	Scenario: User Sign Up with non-unique email id.
		
		Given I am on Sign Up page.
                When I fill in the following
                |Email Id           |email@yahoo.com |
                |Password           |password        |
                |Confirm Password   |password        |
                |Display Name       |Dispname        |
                |Email Notification |true            |
                |Birthday           |12/12/1985      |
                |Acceptance of Terms|true            |
		And I press "Continue".
		Then I see the message "Email id already exist."

	Scenario: User Sign Up with invalid format email id.
		
		Given I am on Sign Up page.
                When I fill in the following
                |Email Id           |emailyahoo.com |
                |Password           |password        |
                |Confirm Password   |password        |
                |Display Name       |Dispname        |
                |Email Notification |true            |
                |Birthday           |12/12/1985      |
                |Acceptance of Terms|true            |
		And I press "Continue".
		Then I see the message "Email id is incorrect"
        
       Scenario: User Sign Up with out accepting the Acceptance of Terms
       
                Given I am on Sign Up page.
                When I fill in the following
                |Email Id           |emailyahoo.com |
                |Password           |password        |
                |Confirm Password   |password        |
                |Display Name       |Dispname        |
                |Email Notification |true            |
                |Birthday           |12/12/1985      |
                |Acceptance of Terms|false           |
		And I press "Continue".
                Then I see the message "Acceptance of Terms is not checked"

       Scenario: Confirm password does not match
       
                Given I am on Sign Up page.
                When I fill in the following
                |Email Id           |emailyahoo.com |
                |Password           |password        |
                |Confirm Password   |pasword         |
                |Display Name       |Dispname        |
                |Email Notification |true            |
                |Birthday           |12/12/1985      |
                |Acceptance of Terms|false           |
		And I press "Continue".
                Then  should see the message "Confirm Password does not match"

