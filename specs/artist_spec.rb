require 'minitest/autorun'
require('minitest/rg')
require_relative '../models/artist.rb'

class TestArtist < Minitest::Test

  def setUp
    @artist = Artist.new({
      'id' => 1,
      'name' => 'Oasis'})
  end

  def test_artist_name
    assert_equal( "Oasis", @artist.name() )
  end

end
