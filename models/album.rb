class Album

  attr_reader :id, :title, :artist
  def initialize(options)
    @id = options["id"].to_i()
    @title = options["title"]
    @artist = options["artist"]
  end

  def save()
    sql = "INSERT INTO albums (title, artist) VALUES ($1, $2) RETURNING id"
    values = [@title, @artist]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end


    def self.all
      sql = "SELECT FROM albums"
      album = SqlRunner.run(sql)
      result = albums.map{|album| Album.new(album)}
      return result
    end

    def albums()
      sql = "SELECT a.* FROM albums a INNER JOIN artists ON albums.ArtistId = artist.id"
      values = [@id]
      results = SqlRunner.run(sql, values)
      return results.map { |album| Album.new(album) }
    end

    def self.delete_all
      sql = "DELETE * FROM albums"
      SqlRunner.run(sql)
    end


      def self.delete(id)
        sql = "DELETE FROM albums
        WHERE id = $1"
        values = [id]
        SqlRunner.run( sql, values )
      end

      def self.find(id)
        sql = "SELECT * FROM albums WHERE id = $1"
        values = [id]
        customer = SqlRunner.run(sql, values)
        result = Artist.new(artist.first)
        return result
      end

      def delete()
        sql = "DELETE FROM albums
        WHERE id = $1"
        values = [@id]
        SqlRunner.run( sql, values )
      end

      def update()
        sql = "UPDATE artists
        SET
        (
          name
        ) =
        (
          $1
        )
        WHERE id = $2"
        values = [@name, @id]
        SqlRunner.run( sql, values )
      end
