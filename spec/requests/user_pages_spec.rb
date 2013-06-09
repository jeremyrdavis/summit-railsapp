require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit users_path }

    it { should have_selector('h1',    text: 'Create User') }
    it { should have_selector('title', text: full_title('Create User')) }
  end

end