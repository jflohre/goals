Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |string|
  page.should have_content(string)
end

When(/^I click on the link "(.*?)"$/) do |link|
  click_link link
end

When(/^I click on the button "(.*?)"$/) do |button|
  click_button button
end

And(/^I fill in "(.*?)" with "(.*?)"$/) do |label, info|
  fill_in label, :with => info
end

Given(/^I am logged in as a user$/) do
  @user = User.create(username: 'testing', email: 'testing@hotmail.com', password: 'testing123')
  visit '/users/login'
  fill_in "Username", :with => @user.username
  fill_in "Password", :with => "testing123"
  click_button "Sign in" 
end

When(/^I make a new goal and step$/) do
  fill_in "Goal", :with => "Web Developer"
  click_link "Add Step"
  fill_in "Step", :with => "Learn Ruby on Rails"
  click_button "Create Goal"
end