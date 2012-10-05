class Dish < ActiveRecord::Base
  include DishesHelper
  attr_accessible :category, :name, :price, :rating

  has_many :reviews, dependent: :destroy
  belongs_to :restaurant, touch: true

  before_save :generate_slug

  private
    def generate_slug
      self.slug = generate_dish_slug(self)
    end
end