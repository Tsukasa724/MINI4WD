class UsersController < ApplicationController
  include PartsHelper

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @machine = Machine.new
    @machines = @user.machines
    @part = Part.new
    @parts = @user.parts
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
    @lap_time_to_races = @user.lap_time_to_races
    set_shop_categories
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      sign_in(@user)
      redirect_to @user
    else
      render "new"
    end
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

  private

  def set_shop_categories
    @shop_categories = Shop.where(shop_name: %w[株式会社タミヤ 小鹿第一工場 池田工場 第二物流センター]).to_h { |shop| [shop.shop_name, shop.id] }
  end
end
