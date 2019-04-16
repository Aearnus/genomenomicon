require "gamesystem"
require "drawable"

# TODO: Write documentation for `Genomenomicon`
module Genomenomicon
  VERSION = "0.1.0"

  # TEST CODE
  class DrawableEntity < Entity
    include Drawable

    def draw
      puts "Drawing #{self.id}"
    end
  end

  gs = GameSystem.new
  gs.subsystems << GameSubsystem.new
  gs.subsystems << DrawableSystem.new
  gs.entities << Entity.new
  gs.entities << DrawableEntity.new
  gs.apply_all
end
