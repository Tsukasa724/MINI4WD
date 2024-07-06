class SearchesController < ApplicationController

  def search
    @users = User.all
    @user_count = User.count
  end
end
