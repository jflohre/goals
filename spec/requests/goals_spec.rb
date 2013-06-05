require 'spec_helper'

describe "Goals" do
  before :each do
    user = FactoryGirl.create(:user)
    goal = FactoryGirl.create(:goal)
    visit '/users/login'
    fill_in :username,    :with => "foo"
    fill_in "Password", :with => "secret88"

  end
  describe "Index Page" do
    it "should have the content 'Goals'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/goals/index'
      page.should have_content("current goals")
    end
    it "should have the ttile 'Current Goals'" do
      visit '/goals/index'
      page.should have_selector('title',
        :text => "Goals | Current Goals")
    end
  end
  describe "New Page" do

    it "should have the ttile 'Current Goals'" do
      click_link "Look at Goals"
      click_link "Edit"
      page.should have_selector('title',
        :text => "Goals | Current Goals")
    end
  end
  describe "Edit Page" do

    it "should have the ttile 'Current Goals'" do
      visit '/goals/1/edit'
      page.should have_content("Editing goal")
    end
  end
  describe "Show Page" do

    it "should have the ttile 'Current Goals'" do
      visit '/goals/show'
      page.should have_selector('title',
        :text => "Goals | Current Goals")
    end
  end
end
