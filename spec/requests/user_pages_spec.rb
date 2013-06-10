require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "User profile page" do
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end

end