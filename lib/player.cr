require "gamesystem"

class Player < Entity
  def initialize
  end
end

class PlayerSubsystem < GameSubsystem(Player)
end
