require 'spec_helper'

describe "StaticPages" do
  subject { page }
  describe 'Home page' do
    before { visit root_path }
    
    it { should have_selector('h1', :text => 'Book Club') }
    it { should have_selector("title", :text => "Book Club") }
    it { should_not have_selector('title', :text => "| Home") }

    describe 'User not logged in' do
    
      it { should have_content('Sign Up Now') }
    end
  end

  describe 'Help page' do
    before { visit help_path }

    it { should have_selector('h1', :text => "Help") }
    it { should have_selector('title', :text => " | Help") }
  end

  describe 'About page' do
    before { visit about_path }

    it { should have_selector('h1', :text => "About") }
    it { should have_selector('title', :text => " | About") }
  end

  describe 'Contact page' do
    before { visit contact_path }
  
    it { should have_selector('h1', :text => "Contact Us") }
    it { should have_selector("title", :text => " | Contact") }
  end
end
