class Restaurant < ActiveRecord::Base
  attr_accessible :category, :city, :name, :state, :street, :zipcode
  has_many :dishes

  after_touch() { tire.update_index }
  self.include_root_in_json = false

  include Tire::Model::Search
  include Tire::Model::Callbacks

  mapping do
    indexes :category,   type: 'string', analyzer: 'snowball'
    indexes :city,       type: 'string', analyzer: 'snowball'
    indexes :name,       type: 'string', analyzer: 'snowball'
    indexes :state,      type: 'string', analyzer: 'snowball'
    indexes :street,     type: 'string', analyzer: 'snowball'

    indexes :dishes do
      indexes :name, analyzer: 'snowball'
      indexes :category, analyzer: 'snowball'
    end
  end

  # settings :number_of_shards => 1,
  # :number_of_replicas => 1,
  # :analysis => {
  #  :analyzer => {
  #    :synonym => {
  #     "tokenizer"    => "whitespace",
  #     "filter"       => ["synonym"],
  #     "type"         => "custom"
  #     },
  #    :filter => {
  #     :synonym => {
  #       "type" => "synonym",
  #       "synonyms" => [
  #         "st st. => street"
  #       ]
  #     }
  #    } 
  #   }
  # } do
  # mapping { indexes :url, :type => 'string', :analyzer => "url_analyzer" }
  
  # Define the JSON serialization
  #
  def to_indexed_json
    to_json( include: { dishes: { only: [:name, :category] } } )
  end

  def self.search(params)
    tire.search(load: true) do
      query do
        string params[:query], :default_operator => 'AND'
      end if params[:query].present?
    end
  end
end