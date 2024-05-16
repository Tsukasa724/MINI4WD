class LapTimeToRacesController < ApplicationController
  def new
    @lap_time_to_race = LapTimeToRace.new
  end

  def create
    @lap_time_to_race = current_user.lap_time_to_races.build(lap_time_to_race_params)
    @shop = Shop.find(params[:lap_time_to_race][:shop_id])
    if @lap_time_to_race.save
      redirect_to shop_path(@shop)
    else
      render "new"
    end
  end

  private

  def lap_time_to_race_params
    params.require(:lap_time_to_race).permit(:lap_time, :user_id, :shop_id)
  end
end
