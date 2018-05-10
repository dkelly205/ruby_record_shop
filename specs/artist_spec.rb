require 'minitest/autorun'
require_relative '../models/artist.rb'

class TestArtist < Minitest::Test

  def setUp
    @artist = Artist.new({
      'name' => 'Oasis'})
  end

  def test_artist_name
    assert_equal( "Oasis", @artist.name() )
  end

end
