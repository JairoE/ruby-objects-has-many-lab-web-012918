require_relative 'artist.rb'

class Song
  attr_accessor :name, :artist
  #attr_reader :artist
  def initialize(name)
    @name = name
    #@artist = artist
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end 
  end
end
