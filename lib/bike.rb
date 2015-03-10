class Bike
  attr_reader :broken
  alias_method :broken?, :broken

  def initialize
    fix
  end

  def break
    @broken = true
  end

  def fix
    @broken = false
  end
end
