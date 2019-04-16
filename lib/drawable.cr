require "gamesystem"

module Drawable
  abstract def draw
end

class DrawableSystem < GameSubsystem
  def apply(drawable : Drawable)
    super
    drawable.draw
  end
end
