require 'rails_helper'
require 'parts_helper'

RSpec.describe PartsHelper, type: :helper do
  describe '#image_path_for_motor' do
    it 'モータ名を選択した時のモーター画像' do
      expect(helper.image_path_for_motor('ノーマル')).to eq('/assets/モーター/ノーマル-3d66a3e4ddcc826d6132dba8b850eb08a723d13215141830caff44c5f113da50.jpeg')
      expect(helper.image_path_for_motor('レブチューン')).to eq('/assets/モーター/レブチューン-e318179abfa077a7248a8894bb66584cded3817f8d36161405cb16826e5e96c8.jpeg')
      expect(helper.image_path_for_motor('トルクチューン')).to eq('/assets/モーター/トルクチューン-9e492e2d767fe02e6a3b8734b8d39db82946391c8c8415b8494621e510b420e6.jpeg')
      expect(helper.image_path_for_motor('アトミックチューン')).to eq('/assets/モーター/アトミックチューン-087f02b63de2a9f8c860f3ccff49ecdff52a13470f7abb8b6f59ca66dedb6edc.jpeg')
      expect(helper.image_path_for_motor('ハイパーダッシュ')).to eq('/assets/モーター/ハイパーダッシュ-36346692b181e0dd51fc5636ebb4be4129ae9fb326ed0a7cd66a05e0f534218c.jpeg')
      expect(helper.image_path_for_motor('スプリントダッシュ')).to eq('/assets/モーター/スプリントダッシュ-784e45662d0e52e910f43d350bf0f08f52b3712c2e51acdb65747e1af44c6b5f.jpeg')
      expect(helper.image_path_for_motor('パワーダッシュ')).to eq('/assets/モーター/パワーダッシュ-e5781c2ea6995868bfbaa9fbed8fedb30c91df890c027f945385d4b40621fd41.jpeg')
      expect(helper.image_path_for_motor('ライトダッシュ')).to eq('/assets/モーター/ライトダッシュ-1492bc74cafb77729a7195c080ad14ea95b83a6e58659e052057ca205f4ce0a7.jpeg')
    end
  end

  describe '#image_path_for_chassi' do
    it 'シャーシ名を選択した時のシャーシ画像' do
      expect(helper.image_path_for_chassi('タイプ１')).to eq('/assets/シャーシ/タイプ１-3f1b928086786db62d5f1908f0c5e6a00fb07321e3d0a966cbbb2bf97d59acf2.jpeg')
      expect(helper.image_path_for_chassi('タイプ２')).to eq('/assets/シャーシ/タイプ２-da1b281f62878d340ad61fe7a5351183762b5f98bcd1e1a3b824b2bab2f87a96.jpeg')
      expect(helper.image_path_for_chassi('タイプ３')).to eq('/assets/シャーシ/タイプ３-428093e6cf1678c5b98c4072b525eec30d46a27de171f5dc2058d6c528f7c88a.jpeg')
      expect(helper.image_path_for_chassi('タイプ４')).to eq('/assets/シャーシ/タイプ４-56b222434b4e051f3284581fd396707f6d20227aa8c5e177c8f57b84ecc129a8.jpeg')
      expect(helper.image_path_for_chassi('タイプ５')).to eq('/assets/シャーシ/タイプ５-c264bbaac05dc76eaa51d0bb2995bcefb71c3c9985dacdef250ef92bfefaedac.jpeg')
      expect(helper.image_path_for_chassi('ゼロ')).to eq('/assets/シャーシ/ゼロ-7d2127c82a4ac765ff00dc7890211e29d979b8c0e92370073e3caf2695a9bde6.jpeg')
      expect(helper.image_path_for_chassi('スーパー１')).to eq('/assets/シャーシ/スーパー１-687be046af9488ca1649392946be8662c98c30273ee6a22231a4e98c5d5d020f.jpeg')
      expect(helper.image_path_for_chassi('スーパー２')).to eq('/assets/シャーシ/スーパー２-acc41e86af51004b283a42c19ac9875b2aa8e46e47172600a587ec76b27356e3.jpeg')
      expect(helper.image_path_for_chassi('FM')).to eq('/assets/シャーシ/FM-cd1b3f5e0740561849055bbd16fc611a2e4211d43e4534a5d6b20885e627b0c7.jpeg')
      expect(helper.image_path_for_chassi('スーパーFM')).to eq('/assets/シャーシ/スーパーFM-0ad6f987b8652385e77449444b68988abc1b3458cc457230411a305381f037d6.jpeg')
      expect(helper.image_path_for_chassi('FM-A')).to eq('/assets/シャーシ/FM-A-3db7246bab92af2082920cf27d8835f4bb1c4befbe68a0b578edb90a8d5b939b.png')
      expect(helper.image_path_for_chassi('スーパーTZ')).to eq('/assets/シャーシ/スーパーTZ-4f4d1b336b8c5724704f58a2f7f5a440dbe85c58f807183f65adb1d4a934d453.jpeg')
      expect(helper.image_path_for_chassi('スーパーTZ-X')).to eq('/assets/シャーシ/スーパーTZ-X-bb7f71bfd5d6bfd2df4e9a0ba5fa4de9614aaf1470aecd97f48ccdf764940b8e.jpeg')
      expect(helper.image_path_for_chassi('スーパーX')).to eq('/assets/シャーシ/スーパーX-bf2ebdaaa4ce0e6d2973b9a7d367edf26808b9f4e78515f9242b9577d7c14b56.jpeg')
      expect(helper.image_path_for_chassi('スーパーXX')).to eq('/assets/シャーシ/スーパーXX-fb320a323e7691d309b1bde4ef6453c5d17754453b56a3ebdea8f225aad6f731.jpeg')
      expect(helper.image_path_for_chassi('MS')).to eq('/assets/シャーシ/MS-23c743f5ef1689d3444ddd271a45ae4351536c789aae94d0ce15aa06ee2184ca.jpeg')
      expect(helper.image_path_for_chassi('MA')).to eq('/assets/シャーシ/MA-f71dcae853b58ec2629c19309c961f3e06d32547c7eed56217b432fd473bb210.jpeg')
      expect(helper.image_path_for_chassi('AR')).to eq('/assets/シャーシ/AR-e41f768f47b8cddea29efd3391888e16e1ff6b9c0b4c56164f7dd69949cdcc69.jpeg')
      expect(helper.image_path_for_chassi('VS')).to eq('/assets/シャーシ/VS-040790617b080eb431b45b70bfd4369f641c53a1b7e787d2320bcaecf102ed33.jpeg')
      expect(helper.image_path_for_chassi('VZ')).to eq('/assets/シャーシ/VZ-06af78c072cc12dd2940f5d24d87aaf804d019c9256023360a5ac8bc2a227247.jpeg')
    end
  end
end
