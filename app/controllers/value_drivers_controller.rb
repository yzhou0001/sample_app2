class ValueDriversController < ApplicationController

  def show
     @value_driver = ValueDriver.find(params[:id])  
  end
  
  def showall
    @value_drivers = ValueDriver.all
  end
  
  def new
    @value_driver = ValueDriver.new
  end
  
   def create
    @value_driver = ValueDriver.new(value_driver_params)
      if @value_driver.save
       
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @value_driver
    else
      render 'new'
    end
  end
  
 def update
   @value_driver = ValueDriver.find(params[:id])
    if @value_driver.update_attributes(value_driver_params)
      flash[:success] = "Profile updated"

      redirect_to value_driver_path
    else
      render 'edit'
    end
  end
  
  def edit
    @value_driver = ValueDriver.find(params[:id])
  end
  
  def index
    @value_drivers = ValueDriver.paginate(page: params[:page])
  end


private

     
    def value_driver_params
      params.require(:value_driver).permit(:name, :text)
    end
end

