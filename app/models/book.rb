class Book < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre, presence: true

  # 空データを登録できないようにする→presence
  validates :title, presence: true
  validates :author, presence: true

end