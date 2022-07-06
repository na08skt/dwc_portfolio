class ApplicationController < ActionController::Base
  
  
  def authenticate_admin
    if current_admin.nil?
     redirect_to root_path
    end
  end
  
end
