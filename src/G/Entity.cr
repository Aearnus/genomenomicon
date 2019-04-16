class Entity
  getter id
  def initialize
    @id = SecureRandom.uuid
  end
end
