
# groups_usersテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| users_id | references | null: false, foreign_key: true |
| groups_id | references | null: false, foreign_key: true |
## Association
- belongs_to :group
- belogns_to :user



# messageテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| body | text |
| image | stirng |
| groups_id | references | null: false, foreign_key: true |
| users_id | references | null: false, foreign_key: true |
## Association
- belongs_to :user


# groupsテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| groups_name | integer |
## Association
- has_many :user






# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

