RSpec.describe "Users", type: :request do
  let(:user) { FactoryBot.create(:user) }
  
  describe "GET /show" do
    let(:shop) { FactoryBot.create(:shop) }

    before do
      get user_path(user)
      sign_in user
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
      if user.machines.present?
        expect(response.body).to include(edit_machine_path(user.machines.first.id))
      end
      if user.parts.present?
        expect(response.body).to include(edit_part_path(user.parts.first.id))
      end
    end
  
    it "店舗選択のドロップダウンがレスポンスに含まれること" do
      Shop.all.each do |shop|
        expect(response.body).to include(shop_path(shop))
      end
    end
    
    it "ログアウト後にエラーが発生しないこと" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
