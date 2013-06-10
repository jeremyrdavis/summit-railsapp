class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # sign the user in
      sign_in user
      flash[:notice] = 'Signed in'
      redirect_to user
    else
      # create an error message
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end    
  end

  def destroy
  end

end
