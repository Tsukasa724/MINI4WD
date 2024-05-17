module ShopsHelper
  def image_path_for_shop(shop_name)
    case shop_name
    when '株式会社タミヤ'
      {
        address: '静岡市駿河区恩田原3-7',
        business_hours: '8:00 ~ 17:00',
        regular_holiday: '木曜日',
        shop_image: '/assets/店舗画像/店舗１-ce084d3f84ac4332c10b7040ca1910a6e4ca98f1ab2e34be47f825251a644d66.jpeg',
        course_layout: '/assets/コースレイアウト/コース１-466c1fe73d1d65e17be8afebc3948c1fb75f61c26d69a006c1bd2efa1d2e7e46.jpeg'
      }
    when 'タミヤ 小鹿第一工場'
      {
        address: '静岡市駿河区小鹿1丁目63-20',
        business_hours: '9:00 ~ 18:00',
        regular_holiday: '水曜日',
        shop_image: '/assets/店舗画像/店舗２-64c0219dae2664b969134bd6f1938aedb041d6dc4b59c76e0eab2ebe94562cac.jpeg',
        course_layout: '/assets/コースレイアウト/コース２-17167937954814b64327db44173e741801a7e827fab327b7181aa34cee769350.jpeg'
      }
    when 'タミヤ 池田工場'
      {
        address: '静岡市駿河区池田144-1',
        business_hours: '8:30 ~ 17:00',
        regular_holiday: '月曜日',
        shop_image: '/assets/店舗画像/店舗３-c826ba6da422c66cd4b910e203af44945a6e70b689d6f31624018bdd10f6cf1f.jpeg',
        course_layout: '/assets/コースレイアウト/コース３-fa30c35c029547e5aecb876698075d104c30f46b891818b486cdeb8b8836dbae.png'
      }
    when '第二物流センター'
      {
        address: '静岡市駿河区小鹿915',
        business_hours: '8:45 ~ 19:00',
        regular_holiday: '土曜日',
        shop_image: '/assets/店舗画像/店舗４-bb230920c916e2270bfb6775d7748c77e548e84c91204165d4d19910a4e36c70.jpeg',
        course_layout: '/assets/コースレイアウト/コース４-15529f8f05c08525cd72a93d7f4be166ed43f8ce08973e21f393953648687348.jpeg'
      }
    else
      {
        address: '',
        business_hours: '',
        regular_holiday: '',
        shop_image: '',
        course_layout: ''
      }
    end
  end
end
