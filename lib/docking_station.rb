class DockingStation
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
    @bikes.length >= 20
  end
end
