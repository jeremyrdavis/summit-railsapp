require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Summit App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('title', :text=> 'Summit App | Home')
    end
  
  end

  describe "About page" do
    
    it "should have the title,'About'" do
      # check the title
      visit about_path
      page.should have_selector('title', :text=> 'Summit App | About')
    end

  end

  describe "Help page" do

    it "should have the title, 'Help'" do
      visit help_path
      page.should have_selector('title', :text=> 'Summit App | Help')
    end
  end

end
