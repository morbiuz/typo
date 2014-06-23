Feature: Manage Categories
  As a blog administrator
  In order to categorize posts
  I want to be able to add and edit blogging categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create a new category
    Given I am on the new category page
		When I fill in "category_name" with "Foocategory"
		And I press "Save"
		Then I should be on the new category page
		Then I should see "Foocategory"

	Scenario: Successfully edit a category
		Given I am on the new category page
		When I fill in "category_name" with "Foocategory"
		And I press "Save"
		Then I should be on the new category page
		Then I should see "Foocategory"
		When I follow "Foocategory"
		And I fill in "category_name" with "Editedfoo"
		And I fill in "category_permalink" with "editedfoo"
		And I press "Save"
		Then I should be on the new category page
		Then I should see "Editedfoo"
