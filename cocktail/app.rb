require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/cocktail_controller')
also_reload('./models/*')

get '/' do
  @drinks = Drink.all()
  @mixers = Mixer.all()
  erb( :index )
end

post '/drinks' do
  @cocktail = Cocktail.find(params['drink-select'],params['mixer-select'])
  erb(:new)
end
