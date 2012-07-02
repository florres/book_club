require 'spec_helper'

describe "StaticPages" do
  describe 'Home page' do
    before { visit '/static_pages/home' }
    
    it "should have the content 'Book Club'" do
      page.should have_selector('h1', :text => 'Book Club')
    end

    it "should have base title" do
      page.should have_selector("title", :text => "Book Club")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => "| Home")
    end

    describe 'User not logged in' do
    
      it "should have the content 'Sign Up Now'" do
        page.should have_content('Sign Up Now')
      end
    end
  end

  describe 'Help page' do
    before { visit '/static_pages/help' }

    it "should have page title ' | Help'" do
      page.should have_selector('title', :text => " | Help")
    end
  end

  describe 'About page' do
    before { visit '/static_pages/about' }

    it "should have page title ' | About'" do
      page.should have_selector('title', :text => " | About")
    end
  end

  describe 'Contact page' do
    before { visit '/static_pages/contact' }
  
    it "should have page title ' | Contact'" do
      page.should have_selector("title", :text => " | Contact")
    end
  end
end
