class ValueDriversController < ApplicationController

  def show
     @value_driver = ValueDriver.find(params[:id])  
  end
  
  def new
   
  end
  
  def edit
    @value_driver = ValueDriver.find(params[:id])
  end
  
  def index
    @value_drivers = ValueDriver.paginate(page: params[:page])
  end
end

