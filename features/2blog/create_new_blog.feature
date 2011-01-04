Feature: As a user creates a Blog.
	
	Scenario: Successfully creates a Blog.
			
		Given I am a User.
		When I goto home page on login.
		And I Press "Create Your Blog Now"
		Then I should see the "Name Your Blog" form
 		When I fill in "My First Blog" in "Blog Title"
                And I fill in "myfirstblog" in "Blog address(URL)"
		And I Press "Continue"
		Then I should see the "Chose a Starter template " form
		When I Press template "Simple"
		And I Press "Continue"
		Then display the message "Your Blog has been created!"
		And display the message"We've just created a blog for you. You can start posting now or customize how your blog looks."
		And display the button "Start Blogging".
		When I Press "Continue"
		Then I should see the field "Title" and text editor.
		When I fill in "my first blog" in title
		And I fill in "It is all about U" in text editor
		And Press "Publish Post"
		Then display the message "Your Blog post published successfully!"
		And display the link "View Post"
		When I Press "View Post"
		Then Display the Blog Title, Blog content.
		And Comment box
		And "Comment" as drop down
 
	Scenario: Blog title already exist
		Given I goto home page on login.
		When I Press "Create A Blog"
		Then I see the "Name Your Blog" form
		When I fill in "My First Blog" in "Blog Title"
		When I fill in "My First Blog" in "Blog Title"
                And I fill "myfirstblog" in "Blog address(URL)"
		Then "Continue" button is in disable state
                And flash an error message that "Blog name already exist"
