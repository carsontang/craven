class Review < ActiveRecord::Base
  attr_accessible :dish_id, :rating, :review
  belongs_to :user
  belongs_to :dish

  validates :user_id, presence: true
  validates :dish_id, presence: true
end