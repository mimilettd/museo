require 'pry'
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

  def add_artist(hash)
    artist = Artist.new(hash)
  end
end
