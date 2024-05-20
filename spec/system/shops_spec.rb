require 'rails_helper'
require 'spec_helper'

RSpec.describe "店舗詳細", type: :system do
  let(:lap_time) { "00:01:23" }
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
  let(:defaults) { [default1, default2, default3, default4, default5, default6] }
  let(:shop_categories) do
    Shop.where(shop_name: %w[株式会社タミヤ 小鹿第一工場 池田工場 第二物流センター]).to_h { |shop| [shop.shop_name, shop.id] }
  end

  before do
    visit '/users/sign_in'
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_on "ログイン"
    visit shop_path(shop.id)
  end

  it "タイトルが表示させること" do
    expect(page).to have_title "MINI4WD SPEED KING"
  end

  it 'タイトルのリンクが表示されること' do
    expect(page).to have_content "MINI4WD SPEED KING"
  end

  it 'タイトルをクリックでマイページに移動すること' do
    click_on 'MINI4WD SPEED KING'
    expect(current_path).to eq user_path(user)
  end

  it '店舗名が表示されること' do
    expect(page).to have_content shop.shop_name
  end

  it '営業時間が表示されること' do
    expect(page).to have_content shop.business_hours
  end

  it '定休日が表示されること' do
    expect(page).to have_content shop.regular_holiday
  end

  it 'ラップタイムが表示されること' do
    fill_in "lap_time_to_race[lap_time]", with: lap_time
    within(".lap_info") do
      click_on "登録"
    end
    expect(page).to have_content user.name
    expect(page).to have_content lap_time
  end

  it '住所が表示されること' do
    expect(page).to have_content shop.address
  end
end
