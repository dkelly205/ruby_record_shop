require_relative('../models/artist.rb')
require_relative('../models/album.rb')
require('pry')

Album.delete_all
Artist.delete_all

  artist1 = Artist.new({
  'name' => 'Oasis'})

  artist2 = Artist.new({
  'name' => 'Eminem'})


  artist1.save
  artist2.save

  album1 = Album.new({
    'title' => 'White America',
    'artist_id' => artist2.id

    })

    album1.save


  binding pry
  nil
