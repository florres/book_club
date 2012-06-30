require 'spec_helper'

describe "StaticPages" do
  describe 'Home page' do
    before { visit '/static_pages/home' }
    
    it "should have the content 'Book Club'" do
      page.should have_content('Book Club')
    end

    describe 'User not logged in' do
    
      it "should have the content 'Sign Up Now'" do
        page.should have_content('Sign Up Now')
      end
    end
  end
end
