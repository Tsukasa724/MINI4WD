RSpec.describe "Shops", type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe "GET /show" do
    let(:shop) { FactoryBot.create(:shop) }

    before do
      sign_in user
      get shop_path(shop)
    end

    it 'HTTPの成功を返していること' do
      expect(response).to have_http_status(:success)
    end

    it "店舗情報がレスポンスに含まれること" do
      expect(response.body).to include(shop.shop_name)
      expect(response.body).to include(shop.business_hours)
      expect(response.body).to include(shop.regular_holiday)
      expect(response.body).to include(shop.address)
    end

    it "ラップタイムの登録フォームがレスポンスに含まれること" do
      expect(response.body).to include("ラップタイム 登録")
      expect(response.body).to include("ラップタイムを入力")
    end

    it "店舗の位置地図がレスポンスに含まれること" do
      expect(response.body).to include('<div id="map"></div>')
    end

    it "戻るリンクがレスポンスに含まれること" do
      expect(response.body).to include("戻る")
    end
  end
end
