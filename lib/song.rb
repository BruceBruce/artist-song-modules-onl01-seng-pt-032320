require 'pry'


class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable
  extend Findable

  @@songs = []

  def initialize
    @@songs << self
  end

  #def self.mfind_by_name(nae)
    #@@songs.detect{|a| a.name == name}
  #end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
