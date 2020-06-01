require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/drink.rb')
also_reload('../models/*')

get '/drink' do
 @drink = Drink.all
 erb(:index)
end
