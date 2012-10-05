module RestaurantsHelper
  def generate_restaurant_slug(r)
    "#{r.name} #{r.street} #{r.city} #{r.state}".downcase.split(' ').join('-').chomp.gsub(/\./, '')
  end
end