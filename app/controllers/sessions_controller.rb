class SessionsController < ApplicationController

  protected

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
  
  public

  def guest_login
    user = User.guest
    sign_in user
    redirect_to user_path(user)
  end
end
