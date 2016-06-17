class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in(user)
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid Name"
      render :new
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
