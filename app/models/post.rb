class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :body, presence: true, length: { maximum: 200 }
end
