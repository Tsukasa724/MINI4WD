class UsersController < ApplicationController
  include PartsHelper

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      redirect_to users_path
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @machine = Machine.new
    @machines = @user.machines
    @part = Part.new
    @parts = @user.parts
    @text_options = ["ノーマル", "レブチューン", "トルクチューン", "アトミックチューン", "ライトダッシュ", "ハイパーダッシュ", "スプリントダッシュ", "パワーダッシュ"]
    @text_options2 = ["タイプ１", "タイプ２", "タイプ３", "タイプ４", "タイプ５", "ゼロ", "スーパー１", "スーパー２", "FM", "スーパーFM", "FM-A", "スーパーTZ", "スーパーTZ-X", "スーパーX", "スーパーXX", "MS", "MA", "AR", "VS", "VZ"]
    @part.motor_image = image_path_for_motor(@part.motor_name)
    @part.chassi_image = image_path_for_chassi(@part.chassi_name)
    @lap_time_to_race = LapTimeToRace.new
    @lap_time_to_races = @user.lap_time_to_races
    @text_options3 = ["店舗１", "店舗２", "店舗３", "店舗４"]
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :email, :password, :introduction, :avatar))
      flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
      redirect_to user_path(current_user.id)
    else
      render "edit"
    end
  end

  def destroy

  end
end
