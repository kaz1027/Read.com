class Book < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  validates :title, presence: true

  with_options on: :next do
    validates_presence_of :derection
    validates_presence_of :output_tweets
  end
end