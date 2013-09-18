require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'sample app'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help Page" do
    it "shold have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title " do
      visit "/static_pages/help"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit "/static_pages/about" 
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end
end
