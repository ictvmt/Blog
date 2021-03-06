require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Dang ky') }
    
  end
end
