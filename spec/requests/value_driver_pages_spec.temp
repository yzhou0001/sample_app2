require 'spec_helper'

describe "Value driver Pages" do

  subject { page }

  describe "Value driver page" do
    before { visit value_driver_path}
    
    it { should have_content('Value driver') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end
end