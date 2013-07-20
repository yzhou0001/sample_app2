require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Business Modeler'" do
      visit root_path
      expect(page).to have_content('Business Modeler')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Business Modeler")
    end
    
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

   describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
 
    it "should have the correct title 'Business Modeler | Help'" do
      visit help_path
      expect(page).to have_title('Business Modeler | Help')
    end
  end
  
   describe "explore page" do

    it "should have the h1 'Explore'" do
      visit explore_path
      expect(page).to have_content('Explore')
    end
   
    it "should have the correct title 'Business Modeler | Explore'" do
      visit explore_path
      expect(page).to have_title('Business Modeler | Explore')
    end
  end
  
  describe "build page" do

    it "should have the h1 'Build'" do
      visit build_path
      expect(page).to have_content('build')
    end
   
    it "should have the correct title 'Business Modeler | Build'" do
      visit build_path
      expect(page).to have_title('Business Modeler | Build')
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the correct title 'Business Modeler | About Us'" do
      visit about_path
      expect(page).to have_title('Business Modeler | About Us')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
   
    it "should have the correct title 'Business Modeler | Contact'" do
      visit contact_path
      expect(page).to have_title('Business Modeler | Contact')
    end
  end
end
