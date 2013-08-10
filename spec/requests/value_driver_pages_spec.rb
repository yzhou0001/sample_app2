require 'spec_helper'

describe "Value driver Pages" do

  subject { page }

  describe "Value driver list page" do
    before { visit value_drivers_path}
    
    it { should have_content('All value drivers') }
    it { should have_title(full_title('All value drivers')) }
  
  end
  
    describe "Value driver description page" do
    before { visit value_driver_path}
    
    it { should have_content('Value driver') }
    it { should have_title(full_title('Value driver')) }
  
  end
  
  describe "edit" do
    before { visit edit_value_driver_path(value_driver) }
    
    describe "Build page" do
      it { should have_content("Update value drivers") }
      it { should have_title("Edit Value Dariver") }
    end
    describe "with invalid information" do
      before { clcik_button "Save changes" }
      it { should have_content('error') }
    end
  end
  
end