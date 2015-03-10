class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def bike_count
    @bikes.length
  end

  def dock bike
    @bikes << bike
  end

  def release bike
    @bikes.delete bike
  end

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
