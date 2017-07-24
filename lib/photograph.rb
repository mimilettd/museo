class Photograph
  attr_reader :name,
              :id
  def initialize(hash={})
    @name = hash[:name]
    @id = hash[:artist_id]
  end
end
