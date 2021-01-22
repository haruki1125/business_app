
# アプリケーション名
business_app
# アプリケーション概要
今までに無いメモアプリ
# URL
https://business-app-32596.herokuapp.com/
# テスト用アカウント
email aaa@aaa
password aaa111

# 利用方法
ログインして、メモをとって頂きます。
ですが普通のメモではなく、抽象化や転用のメモまでできればとって頂きたいです。
基本定期にはメモのメモだと思っていただければ大丈夫です。
# ペルソナ
メモの魔力を読んだ方
今までのメモでは満足できていない方
# 目指した課題解決
メモにメモできるアプリがないので自分で作りたかった
# 洗い出した要件
お洒落なトップページ
ログイン機能
ファクトの送信ページ
メモページ

# 実装予定の機能
aws でのデプロイ

# データベース設計
rails 2.5.8
docker
mysql:5.7



## users テーブル

| Column                  | Type       | Options                        |
| ------                  | ---------- | ------------------------------ |
| email                   | string     | null: false,                   |
| encrypted_password      | string     | null: false,                   |
| nickname                | string     | null: false,                   |


### Association
has_many :notes

## notesテーブル

| Column                  | Type       | Options                        |
| ------                  | ---------- | ------------------------------ |
| fact                    | text       | null: false,                   |
| memomemo                | text       | null: true                    |
| syusyo                  | text       | null: true                   |
| tennyou                 | text       | null: true                   |
| user                    | references | null: false,foreign_key: true  |
### Association

belongs_to :user
