require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )


#index
get '/albums' do
  @albums = Album.all()
  erb(:"albums/index")
end

# create
post '/albums' do
  @album = Album.new(params)
  @album.save
  erb(:"albums/create")
end

get "/albums/new" do
  @artists = Artist.all()
  erb(:"albums/new")
end

get "/albums/:id" do
  @album = Album.find(params[:id])
  erb(:"albums/show")
end

post "/albums/:id/delete" do
  @album = Album.find(params[:id])
  @album.delete()
  redirect to "/albums"
end

get "/albums/:id/edit" do
  @album = Album.find(params[:id])
  erb(:"albums/edit")
end

post "/albums/:id" do
  @album = Album.new(params)
  @album.update()
  redirect to "/albums"
end
