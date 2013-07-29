class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
=======
 before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
 before_action :correct_user,   only: [:edit, :update]
 before_action :admin_user,     only: :destroy
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2

  def index
    @users = User.paginate(page: params[:page])
  end
<<<<<<< HEAD
    
=======
  
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        sign_in @user
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
<<<<<<< HEAD
=======
  def edit
   
  end
  
  def update
      if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
<<<<<<< HEAD
=======
  
  private
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
  
 private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
# Before filters

<<<<<<< HEAD
    # Before filters

=======
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
<<<<<<< HEAD

=======
    
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
<<<<<<< HEAD
     def admin_user
=======
    def admin_user
>>>>>>> d73a22a571763c0494413a978350d5938ec0e1d2
      redirect_to(root_path) unless current_user.admin?
    end
end
