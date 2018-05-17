require 'minitest/autorun'
require('minitest/rg')
require_relative '../models/album.rb'
require_relative '../models/artist.rb'

class TestAlbum < Minitest::Test

  def setup
    @artist = Artist.new({
      'id' => 3,
      'name' => 'Oasis',
      'image' => 'oasis.jpeg'})

      @album = Album.new({
        'id' => 1,
        'title' => 'Parachutes',
        'quantity' => '10',
        'artist_id' => @artist.id})
      end

      def test_album_id
        assert_equal( 1, @album.id() )
      end

      def test_album_title
        assert_equal( "Parachutes", @album.title() )
      end

      def test_album_has_quantity
        assert_equal( 10, @album.quantity() )
      end


      def test_album_has_artist_id
        assert_equal(3, @album.artist_id() )
      end

      def test_album_stock_level
        assert_equal("Low", @album.stock_count)
      end



    end
