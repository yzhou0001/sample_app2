class ValueDriversController < ApplicationController

  def show
     @value_driver = ValueDriver.first
  end
  
  def new
   
  end
  
  def index
    @value_drivers = ValueDriver.all
  end
end
