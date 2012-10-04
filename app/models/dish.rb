class Dish < ActiveRecord::Base
  attr_accessible :category, :name, :price, :rating

  has_many :reviews, dependent: :destroy
  belongs_to :restaurant, touch: true
end