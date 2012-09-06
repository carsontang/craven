class Dish < ActiveRecord::Base
  attr_accessible :category, :name, :price, :rating
  belongs_to :restaurant, touch: true
end