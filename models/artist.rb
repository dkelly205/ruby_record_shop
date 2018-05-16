require_relative( '../db/sql_runner' )
require_relative('../models/album.rb')


class Artist

  attr_reader :id, :name

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @image = options["image"]
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING *"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end


  def self.all
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    result = artists.map{|artist| Artist.new(artist)}
    return result
  end

  def albums()
    sql = "SELECT * from albums where artist.id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |album| Album.new(album) }
  end

  def self.delete_all
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end


  def self.delete(id)
    sql = "DELETE FROM artists
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    artist = SqlRunner.run(sql, values)
    result = Artist.new(artist.first)
    return result
  end

  def delete()
    sql = "DELETE FROM artists
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
end
