require "entity"

class GameSystem
  property subsystems
  property entities

  def initialize
    @subsystems = [] of GameSubsystem
    @entities = [] of Entity
  end

  def apply_all
    @subsystems.each do |s|
      @entities.each do |ent|
        s.apply(ent)
      end
    end
  end
end

class GameSubsystem
  def apply(entity : Entity)
    puts "Applying #{self.class} to #{entity.id}"
  end
end
