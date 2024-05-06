require 'rails_helper'
require 'shops_helper'

RSpec.describe ShopsHelper, type: :helper do
  describe '#image_path_for_shop' do
    ['店舗１', '店舗２', '店舗３', '店舗４'].each do |shop_name|
      it "選択した店舗名が #{shop_name}の場合の店舗情報" do
        shop_info = helper.image_path_for_shop(shop_name)
        expect(shop_info[:address]).to eq(expected_address_for(shop_name))
        expect(shop_info[:business_hours]).to eq(expected_business_hours_for(shop_name))
        expect(shop_info[:regular_holiday]).to eq(expected_regular_holiday_for(shop_name))
        expect(shop_info[:shop_image]).to eq(expected_shop_image_for(shop_name))
        expect(shop_info[:course_layout]).to eq(expected_course_layout_for(shop_name))
      end
    end

    def expected_address_for(shop_name)
      case shop_name
      when '店舗１'
        '静岡市駿河区恩田原3-7'
      when '店舗２'
        '静岡市駿河区小鹿1丁目63-20'
      when '店舗３'
        '静岡市駿河区池田144-1'
      when '店舗４'
        '静岡市駿河区小鹿915'
      else
        ''
      end
    end

    def expected_business_hours_for(shop_name)
      case shop_name
      when '店舗１'
        '8:00 ~ 17:00'
      when '店舗２'
        '9:00 ~ 18:00'
      when '店舗３'
        '8:30 ~ 17:00'
      when '店舗４'
        '8:45 ~ 19:00'
      else
        ''
      end
    end

    def expected_regular_holiday_for(shop_name)
      case shop_name
      when '店舗１'
        '木曜日'
      when '店舗２'
        '水曜日'
      when '店舗３'
        '月曜日'
      when '店舗４'
        '土曜日'
      else
        ''
      end
    end

    def expected_shop_image_for(shop_name)
      case shop_name
      when '店舗１'
        '/assets/店舗画像/店舗１-ce084d3f84ac4332c10b7040ca1910a6e4ca98f1ab2e34be47f825251a644d66.jpeg'
      when '店舗２'
        '/assets/店舗画像/店舗２-64c0219dae2664b969134bd6f1938aedb041d6dc4b59c76e0eab2ebe94562cac.jpeg'
      when '店舗３'
        '/assets/店舗画像/店舗３-c826ba6da422c66cd4b910e203af44945a6e70b689d6f31624018bdd10f6cf1f.jpeg'
      when '店舗４'
        '/assets/店舗画像/店舗４-bb230920c916e2270bfb6775d7748c77e548e84c91204165d4d19910a4e36c70.jpeg'
      else
        ''
      end
    end

    def expected_course_layout_for(shop_name)
      case shop_name
      when '店舗１'
        '/assets/コースレイアウト/コース１-466c1fe73d1d65e17be8afebc3948c1fb75f61c26d69a006c1bd2efa1d2e7e46.jpeg'
      when '店舗２'
        '/assets/コースレイアウト/コース２-17167937954814b64327db44173e741801a7e827fab327b7181aa34cee769350.jpeg'
      when '店舗３'
        '/assets/コースレイアウト/コース３-fa30c35c029547e5aecb876698075d104c30f46b891818b486cdeb8b8836dbae.png'
      when '店舗４'
        '/assets/コースレイアウト/コース４-15529f8f05c08525cd72a93d7f4be166ed43f8ce08973e21f393953648687348.jpeg'
      else
        ''
      end
    end
  end
end
