require 'rails_helper'
require 'spec_helper'

RSpec.describe "店舗詳細", type: :system do
  let(:lap_time) { "00:01:23" }
  let(:user) { FactoryBot.create(:user) }
  let(:shop) { FactoryBot.create(:shop) }
  let!(:shop1) { FactoryBot.create(:shop, shop_name: "店舗１") }
  let!(:shop2) { FactoryBot.create(:shop, shop_name: "店舗２") }
  let!(:shop3) { FactoryBot.create(:shop, shop_name: "店舗３") }
  let!(:shop4) { FactoryBot.create(:shop, shop_name: "店舗４") }
  let(:shop_categories) do
    Shop.where(shop_name: %w[店舗１ 店舗２ 店舗３ 店舗４]).to_h { |shop| [shop.shop_name, shop.id] }
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
