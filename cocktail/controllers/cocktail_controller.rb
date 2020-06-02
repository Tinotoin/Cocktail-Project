require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/drink')
also_reload('../models')

# get '/' do
#  @drink = Drink.all
#  erb(:index)
# end
