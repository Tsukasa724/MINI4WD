class SessionsController < ApplicationController
  protected

  def after_sign_in_path_for
    user_path(current_user)
  end

  public

  def guest_login
    user = User.guest
    sign_in user
    redirect_to root_path
  end
end
