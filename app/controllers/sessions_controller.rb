class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new

  end
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:message] = "Welcome #{user.to_s}"
      redirect_to user_path(user)
    else
      flash[:message] = "Wrong username and password"
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:message] = "Goodbye!"
    redirect_to signin_path
  end
end
