class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  #belongs_to :user , class_name: "User" , foreign_key: "user_id"
end
