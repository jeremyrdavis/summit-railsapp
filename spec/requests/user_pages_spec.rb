require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "User profile page" do
    # we will need someone in the db to select as a manager
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end

  describe "Create user" do

    before { FactoryGirl.create(:manager) }
    before { visit "/users/new" }

    let(:submit) { "Create" }

    describe "should have correct text" do
      it { should have_selector('h1', text: 'Create User') }
    end

    describe "with invalid information" do

      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",   with: "Example User"
        fill_in "Email",  with: "user@example.com"
        fill_in "Password", with: "foobar"
        fill_in "Confirmation", with: "foobar"
        select "Derrick Kittler", :from => "user[manager_id]"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

    end

  end

end