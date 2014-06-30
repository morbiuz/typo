Feature: Merge Articles
  As a blog administrator
  In order to display similar posts as one
  I want to be able to merge two articles into one

  Background:
    Given the blog is set up
    And I am logged into the admin panel
		And I have written two different posts
		And I have commented on both posts
		And I log out


	Scenario: A non-admin cannot merge articles
		Given I am logged in as miner
		And I am on the edit post page
		Then I should not see "Merge"


 	Scenario: When articles are merged, the merged article should contain the text of both previous articles.
		Given I am logged into the admin panel
		And I am on the edit post page
		And I merge the post with another post
		Then I should be on the merged post page
		And I should see "is a type of cured ham"
		And I should see "referred to in the English language as Tortilla"

	Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).  
		Given I am logged into the admin panel
		And I am on the edit post page
		And I merge the post with another post
		Given I am on the manage articles page
		Then I should see "admin"

	Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.
		Given I am logged into the admin panel
		And I am on the edit post page
		And I merge the post with another post
		Then I should be on the merged post page
		And I should see "interesante"
		And I should see "bazofia"

	Scenario: The title of the new article should be the title from either one of the merged articles.
		Given I am logged into the admin panel
		And I am on the edit post page
		And I merge the post with another post
		Then I should be on the merged post page
		And I should see "Jamon Iberico"



