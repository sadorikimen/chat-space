class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages

  def show_lastest_message
    if (lastest_message = messages.last).present?
      lastest_message.content? ? lastest_message.content : '画像が投稿されています'
    else
      'まだメッセージはありません'
    end
  end
end
