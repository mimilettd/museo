class Photograph
  attr_reader :name,
              :id,
              :artist_id,
              :museum_id,
              :year
  def initialize(hash={})
    @name = hash[:name]
    @id = 1
    @artist_id = hash[:artist_id]
    @museum_id = hash[:museum_id]
    @year = hash[:year]
  end
end
