class SuperHeroes
  attr_accessor :name, :power, :biography
  @@all=[]

  def initialize (name,power,biography,team)
    @name = name
    @power = power
    @biography = biography
    @team=team
    @@all << self
  end

  def self.all
    @@all
  end

  def team
    Teams.detect{|team| team[:name] == self.team}.first
  end

end
