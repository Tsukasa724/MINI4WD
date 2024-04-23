class LapTimeToRacesController < ApplicationController
  def index

  end

  def new
    @lap_time_to_race = LapTimeToRace.new
  end    

  def create
    @lap_time_to_race = current_user.lap_time_to_races.build(lap_time_to_race_params)
    if @lap_time_to_race.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def show

  end

  def edit
    @lap_time_to_race = Lap_time_to_race.find(params[:id])
  end

  def update
    @lap_time_to_race = Lap_time_to_race.find(params[:id])
    if @lap_time_to_race.update(params.require(:lap_time_to_race).permit(:lap_time, :shop_name))
      redirect_to user_path(current_user)
    else
      render "edit"
    end
  end

  def destroy

  end
  private

  def lap_time_to_race_params
    params.require(:lap_time_to_race).permit(:lap_time, :shop_name, :user_id)
  end
end
