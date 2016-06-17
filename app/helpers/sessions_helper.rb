module SessionsHelper
  
  # Logs in the current user
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # Returns the current user
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    end
  end
  
  # Returns true if the user is logged in
  def logged_in?
    !current_user.nil?
  end
  
  # Logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
end
