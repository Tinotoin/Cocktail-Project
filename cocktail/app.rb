require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/cocktail_controller')
require_relative('./models/drink')
require_relative('./models/mixer')
require_relative('./models/cocktail')
also_reload('./models/*')
require('pry')

get '/' do
  @drinks = Drink.all()
  @mixers = Mixer.all()
  erb( :index )
end

post '/drinks' do
  @cocktail = Cocktail.find(params['Drink'],params['Mixer'])
  if @cocktail != nil
    erb(:new)
  else
    erb(:reject)
  end
end
