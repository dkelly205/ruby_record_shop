require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )


#index
get '/artists' do
  @animals = Animal.all()
  erb(:"artists/index")
end

# create
post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  erb(:"artists/create")
end

get "/artists/new" do
  erb(:"artists/new")
end

get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end

post "/artists/:id/delete" do
  @artist = Artist.find(params[:id])
  @artist.delete()
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
