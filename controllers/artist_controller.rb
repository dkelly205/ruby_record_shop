require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
require_relative('../models/album.rb')


#index
get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end

# create
post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  redirect to "/artists"
end

get "/artists/new" do
  erb(:"artists/new")
end

get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end

post "/artists/:id/delete" do
  Artist.find(params[:id]).delete()
  redirect to "/artists"
end

get "/artists/:id/edit" do
  @artist = Artist.find(params[:id])
  erb(:"artists/edit")
end

post "/artists/:id" do
  @artist = Artist.new(params)
  @artist.update()
  redirect to "/artists"
end
