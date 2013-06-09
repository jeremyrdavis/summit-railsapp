hrequire 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Summit App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Summit App')
    end
  end

end
