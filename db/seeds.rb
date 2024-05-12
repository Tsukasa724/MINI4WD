require './app/models/user'
require './app/models/shop'
require './app/models/part'
require './app/models/default'

User.create!(name: 'Guest User', email: 'guest@example.com', password: 'gest00', password_confirmation: 'gest00', introduction: 'ゲストアカウントです')
Default.create!(default_image: '/assets/デフォルト/Noimage-0d0fe1307bbfe3fa780c9399bdf4bf0e070098b0bb718e4a35209490896f3b77.png')
Default.create!(default_image: '/assets/デフォルト/IMG_2665-0eeaa858257540cc85c13c95ad94f8864bf64f2e1d77b209347b78982c6698ea.jpeg')
Default.create!(default_image: '/assets/デフォルト/IMG_2664-66366549b47ce99a8de4a3e73e80a051623ed2be24c768a7149e78c006329261.jpeg')
Default.create!(default_image: '/assets/デフォルト/IMG_2663-73b149781e7fc5ac0d8b4087123fa027eedab97ee7f7034189d17d929ce30684.jpeg')
Default.create!(default_image: '/assets/デフォルト/IMG_2662-76aceaea36d20f85d30394c153304f08bdc73c590b4b33dfeca0cacb86902f94.jpeg')
Default.create!(default_image: '/assets/デフォルト/IMG_2637-f908223678bd19be13cfdadd52e13954e46a06246929cee6dc52ef5aec08eb2c.jpeg')
Shop.create!(shop_name: '店舗１', address: '静岡市駿河区恩田原3-7' , business_hours: '8:00 ~ 17:00' , regular_holiday: '木曜日' , shop_gazou: '/assets/店舗画像/店舗１-ce084d3f84ac4332c10b7040ca1910a6e4ca98f1ab2e34be47f825251a644d66.jpeg', course_layout: '/assets/コースレイアウト/コース１-466c1fe73d1d65e17be8afebc3948c1fb75f61c26d69a006c1bd2efa1d2e7e46.jpeg')
Shop.create!(shop_name: '店舗２', address: '静岡市駿河区小鹿1丁目63-20' , business_hours: '9:00 ~ 18:00' , regular_holiday: '水曜日' , shop_gazou: '/assets/店舗画像/店舗２-64c0219dae2664b969134bd6f1938aedb041d6dc4b59c76e0eab2ebe94562cac.jpeg', course_layout: '/assets/コースレイアウト/コース２-17167937954814b64327db44173e741801a7e827fab327b7181aa34cee769350.jpeg')
Shop.create!(shop_name: '店舗３', address: '静岡市駿河区池田144-1' , business_hours: '8:30 ~ 17:00' , regular_holiday: '月曜日' , shop_gazou: '/assets/店舗画像/店舗３-c826ba6da422c66cd4b910e203af44945a6e70b689d6f31624018bdd10f6cf1f.jpeg', course_layout: '/assets/コースレイアウト/コース３-fa30c35c029547e5aecb876698075d104c30f46b891818b486cdeb8b8836dbae.png')
Shop.create!(shop_name: '店舗４', address: '静岡市駿河区小鹿915' , business_hours: '8:45 ~ 19:00' , regular_holiday: '土曜日' , shop_gazou: '/assets/店舗画像/店舗４-bb230920c916e2270bfb6775d7748c77e548e84c91204165d4d19910a4e36c70.jpeg', course_layout: '/assets/コースレイアウト/コース４-15529f8f05c08525cd72a93d7f4be166ed43f8ce08973e21f393953648687348.jpeg')
Part.create!(motor_name: 'ノーマル', motor_image: '/assets/モーター/ノーマル-3d66a3e4ddcc826d6132dba8b850eb08a723d13215141830caff44c5f113da50.jpeg')
Part.create!(motor_name: 'レブチューン', motor_image: '/assets/モーター/レブチューン-e318179abfa077a7248a8894bb66584cded3817f8d36161405cb16826e5e96c8.jpeg')
Part.create!(motor_name: 'トルクチューン', motor_image: '/assets/モーター/トルクチューン-9e492e2d767fe02e6a3b8734b8d39db82946391c8c8415b8494621e510b420e6.jpeg')
Part.create!(motor_name: 'アトミックチューン', motor_image: '/assets/モーター/アトミックチューン-087f02b63de2a9f8c860f3ccff49ecdff52a13470f7abb8b6f59ca66dedb6edc.jpeg')
Part.create!(motor_name: 'ハイパーダッシュ', motor_image: '/assets/モーター/ハイパーダッシュ-36346692b181e0dd51fc5636ebb4be4129ae9fb326ed0a7cd66a05e0f534218c.jpeg')
Part.create!(motor_name: 'スプリントダッシュ', motor_image: '/assets/モーター/スプリントダッシュ-784e45662d0e52e910f43d350bf0f08f52b3712c2e51acdb65747e1af44c6b5f.jpeg')
Part.create!(motor_name: 'パワーダッシュ', motor_image: '/assets/モーター/パワーダッシュ-e5781c2ea6995868bfbaa9fbed8fedb30c91df890c027f945385d4b40621fd41.jpeg')
Part.create!(motor_name: 'ライトダッシュ', motor_image: '/assets/モーター/ライトダッシュ-1492bc74cafb77729a7195c080ad14ea95b83a6e58659e052057ca205f4ce0a7.jpeg')
Part.create!(chassi_name: 'タイプ１', chassi_image: '/assets/シャーシ/タイプ１-3f1b928086786db62d5f1908f0c5e6a00fb07321e3d0a966cbbb2bf97d59acf2.jpeg')
Part.create!(chassi_name: 'タイプ２', chassi_image: '/assets/シャーシ/タイプ２-da1b281f62878d340ad61fe7a5351183762b5f98bcd1e1a3b824b2bab2f87a96.jpeg')
Part.create!(chassi_name: 'タイプ３', chassi_image: '/assets/シャーシ/タイプ３-428093e6cf1678c5b98c4072b525eec30d46a27de171f5dc2058d6c528f7c88a.jpeg')
Part.create!(chassi_name: 'タイプ４', chassi_image: '/assets/シャーシ/タイプ４-56b222434b4e051f3284581fd396707f6d20227aa8c5e177c8f57b84ecc129a8.jpeg')
Part.create!(chassi_name: 'タイプ５', chassi_image: '/assets/シャーシ/タイプ５-c264bbaac05dc76eaa51d0bb2995bcefb71c3c9985dacdef250ef92bfefaedac.jpeg')
Part.create!(chassi_name: 'ゼロ', chassi_image: '/assets/シャーシ/ゼロ-7d2127c82a4ac765ff00dc7890211e29d979b8c0e92370073e3caf2695a9bde6.jpeg')
Part.create!(chassi_name: 'スーパー１', chassi_image: '/assets/シャーシ/スーパー１-687be046af9488ca1649392946be8662c98c30273ee6a22231a4e98c5d5d020f.jpeg')
Part.create!(chassi_name: 'スーパー２', chassi_image: '/assets/シャーシ/スーパー２-acc41e86af51004b283a42c19ac9875b2aa8e46e47172600a587ec76b27356e3.jpeg')
Part.create!(chassi_name: 'FM', chassi_image: '/assets/シャーシ/FM-cd1b3f5e0740561849055bbd16fc611a2e4211d43e4534a5d6b20885e627b0c7.jpeg')
Part.create!(chassi_name: 'スーパーFM', chassi_image: '/assets/シャーシ/スーパーFM-0ad6f987b8652385e77449444b68988abc1b3458cc457230411a305381f037d6.jpeg')
Part.create!(chassi_name: 'FM-A', chassi_image: '/assets/シャーシ/FM-A-3db7246bab92af2082920cf27d8835f4bb1c4befbe68a0b578edb90a8d5b939b.png')
Part.create!(chassi_name: 'スーパーTZ', chassi_image: '/assets/シャーシ/スーパーTZ-4f4d1b336b8c5724704f58a2f7f5a440dbe85c58f807183f65adb1d4a934d453.jpeg')
Part.create!(chassi_name: 'スーパーTZ-X', chassi_image: '/assets/シャーシ/スーパーTZ-X-bb7f71bfd5d6bfd2df4e9a0ba5fa4de9614aaf1470aecd97f48ccdf764940b8e.jpeg')
Part.create!(chassi_name: 'スーパーX', chassi_image: '/assets/シャーシ/スーパーX-bf2ebdaaa4ce0e6d2973b9a7d367edf26808b9f4e78515f9242b9577d7c14b56.jpeg')
Part.create!(chassi_name: 'スーパーXX', chassi_image: '/assets/シャーシ/スーパーXX-fb320a323e7691d309b1bde4ef6453c5d17754453b56a3ebdea8f225aad6f731.jpeg')
Part.create!(chassi_name: 'MS', chassi_image: '/assets/シャーシ/MS-23c743f5ef1689d3444ddd271a45ae4351536c789aae94d0ce15aa06ee2184ca.jpeg')
Part.create!(chassi_name: 'MA', chassi_image: '/assets/シャーシ/MA-f71dcae853b58ec2629c19309c961f3e06d32547c7eed56217b432fd473bb210.jpeg')
Part.create!(chassi_name: 'AR', chassi_image: '/assets/シャーシ/AR-e41f768f47b8cddea29efd3391888e16e1ff6b9c0b4c56164f7dd69949cdcc69.jpeg')
Part.create!(chassi_name: 'VS', chassi_image: '/assets/シャーシ/VS-040790617b080eb431b45b70bfd4369f641c53a1b7e787d2320bcaecf102ed33.jpeg')
Part.create!(chassi_name: 'VZ', chassi_image: '/assets/シャーシ/VZ-06af78c072cc12dd2940f5d24d87aaf804d019c9256023360a5ac8bc2a227247.jpeg')
