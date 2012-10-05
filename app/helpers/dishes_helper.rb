module DishesHelper
  def generate_dish_slug(d)
    "#{d.name} #{d.restaurant.slug}".downcase.split(' ').join('-').chomp.gsub(/\./, '')
  end
end
