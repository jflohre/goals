require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requestion password reset" do
    user = FactoryGirl.create(:user)
    visit '/users/login'
    click_link "Forgot your password?"
    fill_in "Email", :with => user.email
    click_button "Send me reset password instructions"
    current_path.should eq(root_path)
    page.should have_content("Email Sent")
    last_email.to.should include(user.email)
  end
end
