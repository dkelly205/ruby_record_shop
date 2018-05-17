require_relative('../db/sql_runner.rb')
require_relative('../models/artist.rb')



class Album

  attr_reader :id, :title, :artist_id, :quantity
  def initialize(options)
    @id = options["id"].to_i()
    @title = options["title"]
    @quantity = options["quantity"].to_i()
    @artist_id = options["artist_id"].to_i()
  end

  def save()
    sql = "INSERT INTO albums (title, quantity, artist_id) VALUES ($1, $2, $3) RETURNING *"
    values = [@title, @quantity, @artist_id]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end


    def self.all
      sql = "SELECT * FROM albums"
      albums = SqlRunner.run(sql)
      result = albums.map{|album| Album.new(album)}
      return result
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
        album = SqlRunner.run(sql, values)
        result = Album.new(album.first)
        return result
      end

      def delete()
        sql = "DELETE FROM albums
        WHERE id = $1"
        values = [@id]
        SqlRunner.run( sql, values )
      end
      #
      # def update()
      #   sql = "UPDATE albums
      #   SET
      #   (
      #     title
      #   ) =
      #   (
      #     $1
      #   )
      #   WHERE id = $2"
      #   values = [@name, @id]
      #   SqlRunner.run( sql, values )
      # end
    end
