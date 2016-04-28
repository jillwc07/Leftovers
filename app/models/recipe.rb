class Recipe < ActiveRecord::Base
 include HTTParty
 validates :title_name, :ingredient, :image_url, presence: true
 validates :source_url, :f2f_url, :title, :publisher, presence: true
 validates :publisher_url, :social_rank, :ingredients, presence: true

  key_value = ENV['API']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  default_params key: key_value
  format :json

  def self.for term
    binding.pry
    get("/search", query: {q: term})["recipes"]
  end

end
