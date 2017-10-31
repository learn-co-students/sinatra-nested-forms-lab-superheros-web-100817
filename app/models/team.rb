class Team

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :motto

  def initialize(args)
    @name = args["name"]
    @motto = args["motto"]
    @@all << self
  end

end