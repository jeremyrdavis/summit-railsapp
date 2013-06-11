require 'spec_helper'

describe "User's Staffing Requests" do

  subject { page }

  describe "User's profile page" do

    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h3', text: "Open Requests") }
  end

  describe "Create StaffingRequest" do

    before { visit "/staffing_requests/new" }

    let(:submit) { "Create" }

    describe "should have correct text" do
      it { should have_selector('h1', text: "Create New Staffing Request") }
    end

    describe "with valid information" do

      before do
        fill_in "Job code", with: "MWSA"
      end

      it "should create a new StaffingRequest" do
          expect { click_button submit }.to change(StaffingRequest, :count).by(1)
      end

    end
  end
end