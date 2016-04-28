get '/recipes/index' do
  @search_term = params[:looking_for] || 'chocolate'
  @recipes = Recipe.for(@search_term)
  erb :'recipes/index'
end

# get '/search' do
#   search_requests = HTTParty.get('http://food2fork.com/api/search/key=' + ENV["API"])
# end

# post '/recipe' do
#   @recipe = Recipe.find(params[:recipe][:title])
#     erb :'recipe/show'
# end


# get '/recipe/:id' do
#   @recipe = Recipe.find(params[:id])
#   erb :'recipe/show'
# end



