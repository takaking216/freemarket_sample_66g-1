## freemarket_sample_66g
 
フリマアプリ「メルカリ」のクローンサイト。
 
## Description
フリマアプリ「メルカリ」のクローンサイトを作成しました。誰でも簡単に売り買いが楽しめるフリマアプリの機能を再現したページ。 ユーザー登録、商品出品、商品購入などの機能が再現されていますが、実際の取引はできません。
 
## Features
 
- haml/scss記法と、命名規則BEMを使ったマークアップ
- ウィザード形式を用いたユーザー登録フォーム
- SNS認証による新規登録、ログイン
- pay.jpによる商品購入処理
- 商品の検索機能
- capistranoによるAWS EC2への自動デプロイ
- ActiveStorageを使用しAWS S3への画像アップロード
 
## Requirement

- Ruby 2.5.1
- Rails 5.0.7
- MySQL 5.6
 
## Installation

```
$ git clone https://github.com/WAKUZO/freemarket_sample_66g.git
$ cd freemarket_sample_66g
$ bundle install
```

## Author

@takaking216 @yuevo16 @jujuju0924 @WAKUZO
 
## License
 
[MIT]
