# require 'byebug'
class Teams
  attr_accessor :name,:motto
  @@all =[]

  def initialize(name,motto)
    @name = name
    @motto = motto
    @@all << self
  end

  def self.all
    @@all
  end

  def members
    super_heroes.select{|super_hero| super_hero.team == name }
  end
end
