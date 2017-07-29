class Photograph
  attr_reader :id,
              :artist_id,
              :museum_id,
              :name,
              :year
  def initialize(data)
    @id = data[:id]
    @artist_id = data[:artist_id]
    @museum_id = data[:museum_id]
    @name = data[:name]
    @year = data[:year]
  end
end
