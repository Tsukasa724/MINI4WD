class SessionsController < ApplicationController

  protected

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
end