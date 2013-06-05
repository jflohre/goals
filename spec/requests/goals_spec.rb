require 'spec_helper'

describe "Goals" do
  before :each do
    user = FactoryGirl.create(:user)
    goal = FactoryGirl.create(:goal)
    visit '/users/login'
    fill_in :username,    :with => "foo"
    fill_in "Password", :with => "secret88"
    click_button 'Sign in'
  end

  describe "Index Page" do
    before :each do
      visit '/goals'
    end
    it "should have the content 'Goals'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_content("current goals")
    end
    it "should have the title 'Current Goals'" do
      page.should have_selector('title',
        :text => "Goals | Current Goals")
    end
    it "should have the goal 'Web Developer'" do
      page.should have_content("Web Developer")
    end

  end

  describe "New Goal" do
    before :each do
      click_link "Your Goals"
      click_link "New Goal"
    end

    it "should have the content 'New goal'" do
      page.should have_content('New goal')
    end
  end
  describe "Edit Page" do

    it "should have the title 'Current Goals'" do
      visit 'goals'
      click_link "Edit"
      page.should have_content("Editing goal")
    end
  end
  describe "Show Page" do
   before :each do
   click_link 'Look at Goals'
   click_link 'Show' 

    it "should have the ttile 'Current Goals'" do
      page.should have_content("Goal: Web Developer")
    end
    it "should have the content 'Steps taken to reach goal:'"
      page.should have_content("Steps taken to reach goal:")
    end
  end
end
