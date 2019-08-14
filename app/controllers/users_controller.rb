class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new user_params
    if @user.save # what if sth goes wrong
      render :user_info
      session[:user_id] = @user.id # log in when signing up
    else
      render :new
    end
  end
  
  def edit
    @user = @current_user
  end

  def update
    @current_user.update user_params
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
