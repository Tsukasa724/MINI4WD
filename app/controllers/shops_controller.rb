class ShopsController < ApplicationController

  def new
    @shop = Shop.new
  end    

  def create
    @shop = current_user.shops.build(shop_params)
    @shop_info = image_path_for_shop(params[:part][:shop_name])
    if @shop.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def show
    @shop = Shop.includes(:lap_time_to_races).find(params[:id])
    @lap_time_to_race = LapTimeToRace.new
    @user = current_user
    @lap_time_to_races = @shop.lap_time_to_races
    @shop_address = @shop.address
  end

  def edit

  end

  def update

  end

  def destroy

  end
  private

  def shop_params
    params.require(:shop).permit(:shop_name)
  end
end
