# usersテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| user_name | references | null: false, foreign_key: true |
| user_id | references | null: false, foreign_key: true |
## Association
- has_many :group, through: :groups_users
- has_many :message


# groupsテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| group_name | integer |
## Association
- has_many :user, through: :groups_users


# groups_usersテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| user_id | references | null: false, foreign_key: true |
| group_id | references | null: false, foreign_key: true |
## Association
- belongs_to :group
- belogns_to :user


# messageテーブル
| Column | Type | Options |
| ------ | ---- | ------- |
| body | text |
| image | stirng |
| group_id | references | null: false, foreign_key: true |
| user_id | references | null: false, foreign_key: true |
## Association
- belongs_to :user





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

