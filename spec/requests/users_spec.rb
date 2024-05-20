RSpec.describe "Users", type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:shop) { FactoryBot.create(:shop) }
  let!(:shop1) { FactoryBot.create(:shop, shop_name: "株式会社タミヤ") }
  let!(:shop2) { FactoryBot.create(:shop, shop_name: "小鹿第一工場") }
  let!(:shop3) { FactoryBot.create(:shop, shop_name: "池田工場") }
  let!(:shop4) { FactoryBot.create(:shop, shop_name: "第二物流センター") }
  let!(:default1) { FactoryBot.create(:default, default_image: '/assets/Noimage-0d0fe1307bbfe3fa780c9399bdf4bf0e070098b0bb718e4a35209490896f3b77.png') }
  let!(:default2) { FactoryBot.create(:default, default_image: '/assets/IMG_2665-0eeaa858257540cc85c13c95ad94f8864bf64f2e1d77b209347b78982c6698ea.jpeg') }
  let!(:default3) { FactoryBot.create(:default, default_image: '/assets/IMG_2664-66366549b47ce99a8de4a3e73e80a051623ed2be24c768a7149e78c006329261.jpeg') }
  let!(:default4) { FactoryBot.create(:default, default_image: '/assets/IMG_2663-73b149781e7fc5ac0d8b4087123fa027eedab97ee7f7034189d17d929ce30684.jpeg') }
  let!(:default5) { FactoryBot.create(:default, default_image: '/assets/IMG_2662-76aceaea36d20f85d30394c153304f08bdc73c590b4b33dfeca0cacb86902f94.jpeg') }
  let!(:default6) { FactoryBot.create(:default, default_image: '/assets/IMG_2637-f908223678bd19be13cfdadd52e13954e46a06246929cee6dc52ef5aec08eb2c.jpeg') }
  let(:shop_categories) do
    Shop.where(shop_name: %w[株式会社タミヤ 小鹿第一工場 池田工場 第二物流センター]).to_h { |shop| [shop.shop_name, shop.id] }
  end

  describe "GET /show" do
    let(:shop) { FactoryBot.create(:shop) }
    let(:defaults) { [default1, default2, default3, default4, default5, default6] }

    before do
      sign_in user
      get user_path(user)
    end

    it 'HTTPの成功を返していること' do
      expect(response).to have_http_status(:success)
    end

    it "ユーザー情報がレスポンスに含まれること" do
      expect(response.body).to include(user.name)
      expect(response.body).to include("モーター")
      expect(response.body).to include("シャーシ")
      expect(response.body).to include("ラップタイム一覧")
    end

    it "ユーザーのマシンまたはパーツが存在する場合、編集リンクがレスポンスに含まれること" do
      expect(response.body).to include(edit_machine_path(user.machines.first.id)) if user.machines.present?
      expect(response.body).to include(edit_part_path(user.parts.first.id)) if user.parts.present?
    end

    it "店舗選択のドロップダウンがレスポンスに含まれること" do
      Shop.find_each do |shop|
        expect(response.body).to include(shop_path(shop))
      end
    end

    it "ログアウト後にエラーが発生しないこと" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
