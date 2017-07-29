require_relative 'museum'
require_relative 'artist'
require_relative 'photograph'
class Curator
  attr_reader :artists,
              :museums,
              :photographs
  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(museum)
    id_count = museums.length
    museum = museum.merge!(:id => id_count + 1)
    @museums << Museum.new(museum)
  end

  def add_artist(artist)
    id_count = artists.length
    artist = artist.merge!(:id => id_count + 1)
    @artists << Artist.new(artist)
  end

  def add_photograph(photograph)
    id_count = photographs.length
    photograph = photograph.merge!(:id => id_count + 1)
    @photographs << Photograph.new(photograph)
  end

  def find_museum(id)
    museums.each do |museum|
      museum.id == id
      return museum
    end
  end

  def find_artist(id)
    artists.each do |artist|
      artist.id == id
      return artist
    end
  end

  def find_museum_by_photograph(photograph)
    museums.find do |museum|
      museum.id == photograph.museum_id
    end
  end

  def find_artist_by_photograph(photograph)
    artists.find do |artist|
      artist.id == photograph.artist_id
    end
  end


end
