require "uuid"

class Entity
  getter id
  @id = UUID.random
end
