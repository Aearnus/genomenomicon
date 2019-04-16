require "gamesystem"

module Drawable
  abstract def draw
end

class DrawableSystem < GameSubsystem
  def apply(drawable : Drawable)
    drawable.draw
  end
end
