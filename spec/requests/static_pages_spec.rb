require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Business Modeler'" do
      visit '/static_pages/home'
      expect(page).to have_content('Business Modeler')
    end
  end
  
   describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
  
  describe "Home page" do

    it "should have the correct title 'Business Modeler | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Business Modeler | Home')
    end
  end
  
   describe "Help page" do

    it "should have correct title 'Business Modeler | Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Business Modeler | Help')
    end
  end
  
  describe "About page" do

    it "should have the correct title 'Business Modeler | About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Business Modeler | About Us')
    end
  end
  
end