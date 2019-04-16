require "gamesystem"

module Drawable
  abstract def draw
end

class DrawableSystem < GameSubsystem(Drawable)
end
