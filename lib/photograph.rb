class Photograph
  attr_reader :name,
              :artist_id,
              :museum_id
  def initialize(hash={})
    @name = hash[:name]
    @artist_id = hash[:artist_id]
    @museum_id = hash[:museum_id]
  end
end
