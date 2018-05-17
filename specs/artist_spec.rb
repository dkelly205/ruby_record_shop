require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/artist.rb'

class TestArtist < Minitest::Test

  def setup
    @artist = Artist.new({
      'id' => 1,
      'name' => 'Oasis',
      'image' => 'oasis.jpeg'})
  end


  def test_artist_has_id
    assert_equal(1, @artist.id)
  end

  def test_artist_has_name
    assert_equal("Oasis", @artist.name)
  end

  def test_artist_has_image
    assert_equal("oasis.jpeg", @artist.image)
  end

end
