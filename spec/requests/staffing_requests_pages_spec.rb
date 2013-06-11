require 'spec_helper'

describe "Staffing Requests" do

  subject { page }

  describe "User's profile page" do

    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h2', text: "Open Requests") }
  end
  
end