require "secure_random"

class Entity
  getter id
  @id = SecureRandom.uuid
end
