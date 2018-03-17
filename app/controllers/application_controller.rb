class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, notice: "Please Login to view that page!"
    end
  end
end
