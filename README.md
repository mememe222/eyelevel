# テーブル設計

## users テーブル

| Column                       | Type   | Options                   |
| ---------------------------- | ------ | ------------------------- |
| nickname                     | string | null: false               |
| email                        | string | null: false, unique: true |
| encrypted_password           | string | null: false               |


### Association

has_many :arts

## items テーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| title              | string     | null: false                   |
| memo               | text       |                               |
| user_id            | integer    | null: false                   |

### Association

belongs_to :user