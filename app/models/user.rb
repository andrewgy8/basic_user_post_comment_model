class User < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 6, maximum: 15}, uniqueness: true

  has_many :posts
  has_many :comments
end
