class Drawable < Entity
  abstract def draw
end

class DrawableSystem < Subsystem(Drawable)
end
