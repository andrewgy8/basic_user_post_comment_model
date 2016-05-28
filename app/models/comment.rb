class Comment < ActiveRecord::Base
  validates :body, length: {maximum: 1000, minimum: 10}
  validates :post_id, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
  belongs_to :post
end
