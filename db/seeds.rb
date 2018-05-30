require_relative('../models/artist.rb')
require_relative('../models/album.rb')
require('pry')

Album.delete_all
Artist.delete_all

  artist1 = Artist.new({
  'name' => 'Dr Dre',
  'image' => 'dre.jpeg'})

  artist1.save

  artist2 = Artist.new({
  'name' => 'Eminem',
  'image' => 'eminem.jpeg'})

  artist2.save

  artist3 = Artist.new({
  'name' => 'Calvin Harris',
  'image' => 'calvinharris.jpeg'})

  artist3.save

  artist4 = Artist.new({
  'name' => 'Coldplay',
  'image' => 'coldplay.jpeg'})

  artist4.save

  artist5 = Artist.new({
  'name' => 'Maroon 5',
  'image' => 'maroon5.jpeg'})

  artist5.save

  artist6 = Artist.new({
  'name' => 'Tupac',
  'image' => 'tupac.jpeg'})

  artist6.save

  album1 = Album.new({
    'name' => 'The Eminem Show',
    'quantity' => 20,
    'artist_id' => artist2.id
    })


  album1.save

  album2 = Album.new({
    'name' => 'The Chronic',
    'quantity' => 10,
    'artist_id' => artist1.id
    })

    album2.save

  # binding pry
  # nil
