
  # アプリケーション名

  eyelevel

  # アプリケーション概要

  一つの投稿に画像を複数枚添付し、管理するアプリ

  # URL

  https://eyelevel.herokuapp.com/

  # テスト用アカウント

  ・Basic認証用パスワード： adimn
  ・Basin認証ID： 2222
  ・メールアドレス： test@gmail.com
  ・パスワード： aaa111

  # 利用方法

  ## アート投稿

  1.トップページのヘッダーからユーザー新規登録を行う

  2.ヘッダーのAdd Artボタンからアートの内容(タイトル、メモ※任意、画像)を入力し、投稿する

  # アート詳細

  1.一覧ページからアートをクリックしてアートの詳細を確認する

  2.詳細ページの画像をクリックすること拡大表示される

  # アプリケーションを作成した背景

  デジタルイラストを作成する際に、作業工程で発生する四つの画像をすべて保存するとフォルダが乱れてしまうという課題がありました。同じ課題を抱えているイラストレーターも多いと考え、ひとつの投稿に複数枚画像を添付し、編集機能を兼ね備えたアプリの開発をしました。

  # 洗い出した要件

  https://docs.google.com/spreadsheets/d/1NSmvSeZQfuMKOupNVH5jsFImSnXE-0bMDJZddF-gW2k/edit#gid=595039049

  # 実装した機能についての画像

  # 実装予定の機能

  ・タグをつけて検索できる機能
  ・SNSへの共有機能
  ・ユーザー編集機能
  ・アイコン設定機能

  # テーブル設計

  [![Image from Gyazo](https://i.gyazo.com/add5da35aafc0968f0f51f15b2c17792.png)](https://gyazo.com/add5da35aafc0968f0f51f15b2c17792)

  # 画面遷移図

  [![Image from Gyazo](https://i.gyazo.com/4708821fbac75d508953f56b023e1ee3.png)](https://gyazo.com/4708821fbac75d508953f56b023e1ee3)

  # 開発環境

  ・フロントエンドP

  ・バックエンド

  ・テキストエディタ

  ・タスク管理
  
  # ローカルでの動作方法

  以下のコマンドを順に実行

  % git clone https://github.com/mememe222/eyelevel

  % cd eyelevel

  % bundle install

  % yarn install

  # 工夫したポイント

  アプリの性質上投稿が殺風景になってしまうことを考慮し、サイト全体を視覚的に楽しめるようにデザインしました。

  なおかつ投稿されたイラストの印象を変えないカラーリングを心がけました。