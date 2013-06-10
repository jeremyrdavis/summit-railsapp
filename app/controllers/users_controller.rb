class UsersController < ApplicationController
  def new
    @user = User.new
    @managers = get_managers
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user  
    else
      @managers = get_managers
      render 'new'
    end
  end

  def get_managers
    return User.all
  end
  
end
