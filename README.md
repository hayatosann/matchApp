#  matchApp
## URL
http://52.192.255.217/

# 制作理由

このアプリケーションを作成した目的として以下をあげる:

* Railsによるアプリ作成を通じて、過去の個人開発、チーム開発における学びのアウトプット。

* 他言語学習に精をだし、Railsと向き合う時間が少なくなってしまったと感じたので改めてRailsでアプリを作成することにより、Railsと向き合う時間を確保したかった。

* 今回はuser同士の出会いの目的のmatchingアプリとなったが、コンセプト次第では幅広い分野に応用が聞くアプリケーションの作成に挑戦。

* github運用におけるbranchの作成とcommitへの意識の強化。

* 苦手意識のあったAWSを使用してアプリケーションをデプロイする手順の確認と学習。Rails5.2よりsecrets.ymlからcredential.ymlへと運用方法が変わったため、credential.ymlを使用したデプロイを経験する。

* 今後の課題,行いたい実装
  * circle ciの導入。
  * Dockerの使用。
  * userの位置情報を取得し、範囲を指定してuser同士をmatchingさせる実装。
  * matchingした際の通知機能の実装。
  
# 苦労した点
- jTinderの導入
  - 経験にない実装のため、使用が楽とは聞いていたがどのように使用するのか,githubのreadmeを読んでもなかなか理解できず、導入に時間がかかった。
- matching機能の実装
  - likeされたuserとlikeしたuser同士をどのように記述すれば紐付けることができるのかということが設計段階において一番苦労した点だと考えております。

# アプリ使用方法
## user1:hayato
  - email: test@gmail.com
  - password: testtest
## user2:rucy
  - email: test2@gmail.com
  - password: testtest2
## 使用
user1とuser２をマッチングさせることを考える。シークレットウィンドウモードで開いたブラウザと通常モードで開いたブラウザでそれぞれのuserを使ってログインし、マッチングさせると下記の挙動に記しているようにchat画面に移動できるので、chatを開始する。

# 挙動
## Initial
 https://gyazo.com/d776a087ad1d93c840af7b50c9b351d9
 
## Sign_up
 https://gyazo.com/942a3fdf5b904c1f4c14672740963ca2
 
## Swipe function
 https://gyazo.com/d9b6830d8212f6dd28d213908c572c28
 
## User page & Log_out
 https://gyazo.com/8d3886fa9c48309caa6af8d21c3a45cf
 
## Log_in
 https://gyazo.com/0851329ee70845302221b5ed16de73ca
 
## Matching function
 https://gyazo.com/fcf63b334867381e8d7520c904d03aeb
 https://gyazo.com/1fd2a35723f7df667592c55ecacb19bf
 
## Chat function
 https://gyazo.com/fc6d251313572a89b4597c16c8a5d7d5
 https://gyazo.com/8b0c3ebacb2eef74633d78556cecf2d9
  
## Mobile phone Correspondence
https://gyazo.com/71c267f8d2867ad23d38701d3ec1ee77

# ER図
[![Image from Gyazo](https://i.gyazo.com/6eadfc975e20ee71eca5ac537ac53181.png)](https://gyazo.com/6eadfc975e20ee71eca5ac537ac53181)

# 追加導入実装
* Sider CIとslack
  * プルリクエストを自動で解析し、セキュリティバグ、コード規約、文法、重複記述、未使用の変数、複雑度を検知してその結果をslackに通知してくれるように設定しました。
