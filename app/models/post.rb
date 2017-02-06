class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: { message: "Please don't leave this blank" }
end
