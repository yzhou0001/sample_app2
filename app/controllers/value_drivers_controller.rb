class ValueDriversController < ApplicationController

  def show
     @value_driver = ValueDriver.find(params[:id])  
  end
  
  def new
   
  end
  
  def index
    @value_drivers = ValueDriver.paginate(page: params[:page])
  end
end

