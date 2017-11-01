class Team
  attr_accessor :team_name, :team_motto

  @@all = []

  def initialize(params)
    @team_name = params[:team_name]
    @team_motto = params[:team_motto]
    @@all << self
  end

  def self.all
    @@all
  end

end
