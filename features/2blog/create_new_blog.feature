Feature: As a user creates a Blog.
	
	Scenario: Successfully creates a Blog.
			
		Given I am a User.
		When I goto home page on login.
		And I Click on "Create Your Blog Now"
		Then I see the "Name Your Blog" form
 		When I fill in "My First Blog" in "Blog Title", "myfirstblog" in Blog address(URL)
		And I click on "Continue"
		Then I see the "Chose a Starter template " form
		When I click on a template "Simple"
		And I click on "Continue"
		Then display the message "Your Blog has been created!"
		And display the message"We've just created a blog for you. You can start posting now or customize how your blog looks."
		And display the button "Start Blogging".
		When I click on "Continue"
		Then I see the field "Title" and text editor.
		When I fill in "my first blog" in title
		And I fill in "It is all about U" in text editor
		And Click on "Publish Post"
		Then display the message "Your Blog post published successfully!"
		And display the link "View Post"
		When I click on "View Post"
		Then Display the Blog Title, Blog content.
		And Comment box
		And "Comment" as drop down
 
	Scenario: Blog title already exist
		Given I goto home page on login.
		When I click on "Create A Blog"
		Then I see the "Name Your Blog" form
		When I fill in "My First Blog" in "Blog Title"
		

	