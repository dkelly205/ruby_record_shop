require 'minitest/autorun'
require('minitest/rg')
require_relative '../models/album.rb'
require_relative '../models/artist.rb'

class TestAlbum < Minitest::Test

  def setUp
    @artist = Artist.new({
      'name' => 'Colplay'})

    @album = Album.new({
        'title' => 'Parachutes',
        'artist' => @artist})
  end

  def test_album_title
    assert_equal( "Coldplay", @album.title() )
  end

end
