class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 12 }
    validates :email, presence: true, uniqueness: true, length: { minimum: 8, maximum: 20 }
end
