require 'spec_helper'

describe "Static pages" do
  subject  {page }

  describe "Home page" do
    before {visit root_path}
    
    it { should have_selector('h1', :text => 'Welcome to Goals') }
    it {should have_selector('title', :text => full_title('Home'))}
  end

  describe "Contact page" do
    before {visit contact_path}
    it { should have_selector('h1', :text => 'Contact')}
    it {should have_selector('title', :text => full_title('Contact'))}
  end

  describe "About Us page" do
    before {visit about_path}
    it {should have_selector('h1', :text => 'About Us')}
    it {should have_selector('title', :text => full_title('About Us'))}
  end
  describe "Motivation page" do
    before {visit motivation_path}
    it { should have_selector('h1', :text => 'Motivation')}
    it { should have_selector('title', :text => full_title('Motivation'))}
  end
end