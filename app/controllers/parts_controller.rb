class PartsController < ApplicationController
  include PartsHelper
  def new
    @part = Part.new
  end

  def edit
    @part = Part.find(params[:id])
    @text_options = %w[ノーマル レブチューン トルクチューン アトミックチューン ライトダッシュ ハイパーダッシュ スプリントダッシュ パワーダッシュ]
    @text_options2 = %w[タイプ１ タイプ２ タイプ３ タイプ４ タイプ５ ゼロ スーパー１ スーパー２ FM スーパーFM FM-A スーパーTZ
                        スーパーTZ-X スーパーX スーパーXX MS MA AR VS VZ]
    @text_options3 = %w[ノーマルシャフト 中空シャフト 強化シャフト]
    @text_options4 = %w[ノーマルプロペラシャフト 中空プロペラシャフト]
    @text_options5 = %w[低摩擦プラベアリング 丸穴ボールベアリング 六角穴ボールベアリング]
    @text_options6 = %w[ノーマルターミナル ゴールドターミナル]
    @text_options7 = %w[レスポンスポンジタイヤ 中空ゴムタイヤ ソフトスリックタイヤ ハードスリックタイヤ バレルタイヤ オフセットとレッドタイヤ ローハイトタイヤ]
    @text_options8 = %w[小径ホイール 大径ホイール スポークホイール Yスポークホイール 5本スポークホイール ナローワンウェイホイール 小径カーボンホイール 大径カーボンホイール]
    @text_options9 = %w[ハイスピードカウンターギヤー 軽量超速ギヤー]
    @text_options10 = %w[17mmアルミベアリングローラー 19mmアルミベアリングローラー プラリング付きベアリングローラー 17mmプラリング付きベアリングローラー
                         19mmプラリング付きベアリングローラー 9mmボールベアリングローラー 11mmボールベアリングローラー 低摩擦プラリングローラー 2段低摩擦プラローラー(13-13mm)
                         2段アルミローラー(13-12mm) 2段アルミローラー(9-8mm) ゴムリング付き２段アルミローラー(13-12mm) 13mmオールアルミベアリングローラー]
  end

  def create
    @part = current_user.parts.build(part_params)
    if @part.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def update
    @part = Part.find(params[:id])
    @part.attributes = part_params
    if @part.update(part_params)
      redirect_to user_path(current_user)
    else
      render "edit"
    end
  end
end

private

def part_params
  params.require(:part).permit(:motor_name, :motor_image, :chassi_name, :chassi_image, :shaft_name, :propeller_name, :gikuuke_name, :terminal_name, :tire_name, :wheel_name, :gear_name, :roller_name,
                               :user_id)
end
