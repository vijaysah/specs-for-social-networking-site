Feature: Create  group.
In order to communicate with subset of my network
As a user
I want to create a group

	Scenario: Successfully create a public group.
		Given I am logged in as a user
		When I follow "Groups"
		And press "Create New Group"
		And fill in "My group" in "Group Name"
		And fill in "This is the group description" in "Group Description"
		And I check the "Public" options from "Group Permissions"
		And I check the "Email" options from "Options"
		And press Save
		Then create the group named "My Group"
		And I should see the message ""My Group created successfully".
	

	Scenario: Successfully create a private group.
		Given I am logged in as a user
		When I follow "Groups"
		And press "Create New Group"
		And fill "My Private group" in "Group Name"
		And fill "This is the group description" in "Group Description"
		And I check the "Private" options from "Group Permissions"
		And I fill in "usr1@company.com" in Invite members
		And I fill in "usr2@company.com" in Invite members
		And I check the "Email" options from "Options"
		And press Save
		Then create the group named "My Private Group"
		And I should see the message ""My Private Group created successfully".

	Scenario: Successfully creates a private group without group member.
		Given I am logged in as a user
		When I follow "Groups"
		And press "Create New Group"
		And fill "My Private group 2" in "Group Name"
		And fill "This is the group description" in "Group Description"
		And I check the "Private" options from "Group Permissions"
		And I left blanks the field Invite members
		And I check the "Email" options from "Options"
		And press Save
		Then create the group named "My Private Group 2"
		And I should see the message ""My Private Group 2 created successfully".

	Scenario: Unsuccessful in creating a group without groupname.
		Given I am logged in as user.
		When I left blank the "Group Name" field
		And fill the other fields
		And press Save
		Then I should see the message "Group name is required."

	Scenario: Unsuccessful in creating a group with the existing name.
		Given I am logged in as user.
		When I fill "My Group" in "Group Name" field
		And fill the other fields
		And press Save
		Then I should see the message "Group name already exist".

			