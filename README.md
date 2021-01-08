users テーブル

| Column                  | Type       | Options                        |
| ------                  | ---------- | ------------------------------ |
| email                   | string     | null: false,                   |
| encrypted_password      | string     | null: false,                   |
| nickname                | string     | null: false,                   |


### Association
has_many :notes

notesテーブル

| Column                  | Type       | Options                        |
| ------                  | ---------- | ------------------------------ |
| fact                    | text       | null: false,                   |
| memomemo                | text       | null: true                    |
| syusyo                  | text       | null: true                   |
| tennyou                 | text       | null: true                   |
| user                    | references | null: false,foreign_key: true  |
### Association

belongs_to :user
