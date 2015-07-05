class SessionsController < ApplicationController
  def new
  end

 def create
    user = Usuario.find_by(email: params[:email])
    if user and user.authenticate(params[:senha])
      session[:user_id] = user.id
      redirect_to anucio_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out"
  end
end
