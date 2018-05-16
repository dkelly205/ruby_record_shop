require_relative('../models/artist.rb')
require_relative('../models/album.rb')
require('pry')

Album.delete_all
Artist.delete_all

  artist1 = Artist.new({
  'name' => 'Oasis',
  'image' => 'n/a'})

  artist1.save

  album1 = Album.new({
    'name' => 'Wonderwall',
    'quantity' => 1,
    'artist_id' => artist1.id
    })


  album1.save

  binding pry
  nil
