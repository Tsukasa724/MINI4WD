require 'rails_helper'
require 'spec_helper'

RSpec.describe "マイページ", type: :system do
  let(:user) { FactoryBot.create(:user) }
  let(:shop) { FactoryBot.create(:shop) }
  let(:machine_name) { "testmachine" }
  let(:machine_weight) { "100.0" }
  let(:part) { FactoryBot.create(:part) }
  let!(:shop1) { FactoryBot.create(:shop, shop_name: "店舗１") }
  let!(:shop2) { FactoryBot.create(:shop, shop_name: "店舗２") }
  let!(:shop3) { FactoryBot.create(:shop, shop_name: "店舗３") }
  let!(:shop4) { FactoryBot.create(:shop, shop_name: "店舗４") }
  let!(:default1) { FactoryBot.create(:default, default_image: '/assets/Noimage-0d0fe1307bbfe3fa780c9399bdf4bf0e070098b0bb718e4a35209490896f3b77.png') }
  let!(:default2) { FactoryBot.create(:default, default_image: '/assets/IMG_2665-0eeaa858257540cc85c13c95ad94f8864bf64f2e1d77b209347b78982c6698ea.jpeg') }
  let!(:default3) { FactoryBot.create(:default, default_image: '/assets/IMG_2664-66366549b47ce99a8de4a3e73e80a051623ed2be24c768a7149e78c006329261.jpeg') }
  let!(:default4) { FactoryBot.create(:default, default_image: '/assets/IMG_2663-73b149781e7fc5ac0d8b4087123fa027eedab97ee7f7034189d17d929ce30684.jpeg') }
  let!(:default5) { FactoryBot.create(:default, default_image: '/assets/IMG_2662-76aceaea36d20f85d30394c153304f08bdc73c590b4b33dfeca0cacb86902f94.jpeg') }
  let!(:default6) { FactoryBot.create(:default, default_image: '/assets/IMG_2637-f908223678bd19be13cfdadd52e13954e46a06246929cee6dc52ef5aec08eb2c.jpeg') }
  let(:defaults) { [default1, default2, default3, default4, default5, default6] }
  let(:shop_categories) do
    Shop.where(shop_name: %w[店舗１ 店舗２ 店舗３ 店舗４]).to_h { |shop| [shop.shop_name, shop.id] }
  end

  before do
    visit '/users/sign_in'
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_on "ログイン"
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

  it "ログインでマイページに移動すること" do
    expect(current_path).to eq user_path(user)
    expect(page).to have_content user.name
    @shop_categories = shop_categories
  end

  it "マイページでユーザー名が表示されること" do
    expect(page).to have_content user.name
  end

  it "マイページでマシン情報が表示されること" do
    visit user_path(user)
    fill_in "machine[machine_name]", with: machine_name
    fill_in "machine[machine_weight]", with: machine_weight
    within(".machine_info") do
      click_on "登録完了"
    end
    expect(page).to have_content machine_name
    expect(page).to have_content machine_weight
  end

  it "マイページでパーツ情報が送信されること" do
    visit user_path(user)
    select "レブチューン", from: "part[motor_name]"
    select "タイプ１", from: "part[chassi_name]"
    within(".part_info") do
      click_on "登録完了"
    end
  end

  it "店舗情報へのリンクが正しく機能すること" do
    expect(current_path).to eq user_path(user)
    expect(page).to have_content user.name
    @shop_categories = shop_categories
    visit shop_path(@shop_categories["店舗１"])
    expect(page).to have_content shop1.shop_name
  end
end
