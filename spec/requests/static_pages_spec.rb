require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Summit App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title', :text=> 'Summit App | Home')
    end
  
  end

  describe "About page" do
    
    it "should have the title,'About'" do
      # check the title
      visit '/static_pages/about'
      page.should have_selector('title', :text=> 'Summit App | About')
    end

  end

  describe "Help page" do

    it "should have the title, 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text=> 'Summit App | Help')
    end
  end

end
