class PartsController < ApplicationController
  include PartsHelper

  def new
    @part = Part.new
  end

  def create
    @part = current_user.parts.build(part_params)
    @part.motor_image = image_path_for_motor(params[:part][:motor_name])
    @part.chassi_image = image_path_for_chassi(params[:part][:chassi_name])
    if @part.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def show

  end

  def edit
    @part = Part.find(params[:id])
    @text_options = ["ノーマル", "レブチューン", "トルクチューン", "アトミックチューン", "ライトダッシュ", "ハイパーダッシュ", "スプリントダッシュ", "パワーダッシュ"]
    @text_options2 = ["タイプ１", "タイプ２", "タイプ３", "タイプ４", "タイプ５", "ゼロ", "スーパー１", "スーパー２", "FM", "スーパーFM", "FM-A", "スーパーTZ", "スーパーTZ-X", "スーパーX", "スーパーXX", "MS", "MA", "AR", "VS", "VZ"]
    @part.motor_image = image_path_for_motor(@part.motor_name)
    @part.chassi_image = image_path_for_chassi(@part.chassi_name)
  end

  def update
    @part = Part.find(params[:id])
    @part.attributes = part_params
    @part.motor_image = image_path_for_motor(params[:part][:motor_name])
    @part.chassi_image = image_path_for_chassi(params[:part][:chassi_name])
    if @part.update(part_params)
      redirect_to user_path(current_user)
    else
      render "edit"
    end
  end

  def destroy

  end
end
private

def part_params
  params.require(:part).permit(:motor_name, :motor_image, :chassi_name, :chassi_image, :user_id)
end
