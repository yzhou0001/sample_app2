require 'spec_helper'

describe ValueDriver do
  
  before do 
    @value_driver = ValueDriver.new(name: "Asset", 
        text: "this is the description of Asset as a value driver") 
  
  subject { @value_driver }
  
  it { should respond_to(:name) }
  it { should respond_to(:text) }
 end
end