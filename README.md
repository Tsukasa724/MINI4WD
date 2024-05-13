# MINI4 SPEED KING

## アプリ概要・利用目的
アプリに登録してある店舗ごとに**ラップタイム**を投稿することが可能になっています。

さらに、ご自身が使用されているミニ四駆のマシン情報を登録していただくことができ、他ユーザーが登録したマシン情報を閲覧することもできます。

登録されている店舗情報には、**営業時間・定休日・住所**といった基本情報だけでなくコースレイアウトや他ユーザーのラップタイム、GoogleMAPと連携した地図情報を確認することもできるようになっています。

## アプリのファーストビュー

![画像名](./first_view.jpg)

## アプリを作るに至った経緯
私自身ミニ四駆を愛しており、１人でコース設置店へ走らせに行くことがあるのですが、ミニ四駆ブームだった時と比べると初心者や１人で楽しむには少し敷居が高くなってしまっている傾向があるように感じられます。

親切な方が多く速くするためのアドバイスを教えてくれる事が度々ありますが、なかには黙々と１人で楽しみたい方もいられると思います。私もすこし苦手であり、今でも１人でコースに行くと走らせることに緊張する事があります。

ミニ四駆は速さを競うものであり、コース設置店には**ラップタイムボード**というものが置いてあります。ここに記入されているラップタイムは、その店の猛者たちが上位を占めておりこの点も敷居が高くなっている原因となっています。

それでも１人のレーサーとして「**自分のタイムを記録には残したい！**」「**もっと気軽に楽しみたい！**」そんな思いからアプリ作成に至りました。

## URL
### Heroku
https://mini4wd-a11855ad5076.herokuapp.com/

・　画面中部のログインボタンからメールアドレス・パスワード入力画面へ

・　メールアドレス「**guest@example.com**」 パスワード「**guest00**」を入力でゲスト用ユーザーへログインできます

## 使用技術
### フロントエンド
**・　HTML** 

**・　CSS** 

**・　JavaScript** 

**・　Bootstrap**

### バックエンド
**・　Ruby** 

**・　MySQL** 

**・　Ruby On Rails** 

**・　Google MAP API** 

### インフラ
**・　AWS**

**・　Heroku**

### その他
**・　GitHub**

## 機能一覧
**・　ユーザー登録/ログイン(devise)**

**・　ミニ四駆情報登録 (マシン名/重量/モーター/シャーシ)**

**・　店舗情報閲覧(店名/営業時間/定休日/住所)**

**・　ラップタイム登録**

**・　他ユーザー情報閲覧**

**・　Google MAP API**

## ER図
![画像名](./erd.jpg)

## テスト
**・　RSpec**
