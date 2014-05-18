class SessionsController < ApplicationController
  def create

    user = Customer.find_by_userName(params[:userName])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user]=user.userName
      redirect_to administrator_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"

    end

  end

  def destroy
     session[:user_id] = nil
     session[:user]=nil
     redirect_to mains_url, notice: "Logged out"
  end

  def new
    @cart=current_cart
  end

end
