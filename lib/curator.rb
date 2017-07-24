require_relative 'museum'

class Curator
  attr_reader :artists,
              :museums
  def initialize
    @artists = []
    @museums = []
  end

  def add_museum(hash)
    museum = Museum.new(hash)
    @museums << museum
  end
end
