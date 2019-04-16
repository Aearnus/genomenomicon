require "Entity"

class System
  property subsystems
  property entities
  def initialize
    @subsystems = [] of Array(Subsystem)
    @entities = [] of Array(Entity)
  end

  def apply_all
    @subsystems.each do |s|
      @entities.each do |ent|
        s.apply ent
      end
    end
end

class Subsystem(T)
  def apply(entity : Entity)
    if entity.is_a? T
      puts "calling subsystem on entity"
    end
  end
end
