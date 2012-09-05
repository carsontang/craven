class Restaurant < ActiveRecord::Base
  attr_accessible :category, :city, :name, :state, :street, :zipcode

  include Tire::Model::Search
	include Tire::Model::Callbacks
end