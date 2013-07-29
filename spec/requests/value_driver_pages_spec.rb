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
  
end