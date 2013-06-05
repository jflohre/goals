require 'spec_helper'

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Email",                 :with => "alindeman@example.com"
    fill_in "Username",              :with => "alindeman"
    fill_in "Password",              :with => "ilovegrapes"
    fill_in "Password confirmation", :with => "ilovegrapes"

    click_button "Sign up"

    page.should have_content("Logged in as alindeman")
  end
end

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = FactoryGirl.create(:user)
    visit "/users/login"
    
    fill_in :username,    :with => "foo"
    fill_in "Password", :with => "secret88"

    click_button "Sign in"

    page.should have_content("Logged in as foo")
  end
end
