require 'docking_station'

describe DockingStation do
  it 'accepts bikes' do
    expect do
      subject.dock :bike
    end.to change(subject, :bike_count).from(0).to(1)
  end
  it 'releases bikes' do
    subject.dock :bike
    expect do
      subject.release :bike
    end.to change(subject, :bike_count).from(1).to(0)
  end
  it 'knows when it is full' do
    expect do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock :bike }
    end.to change(subject, :full?).from(false).to(true)
  end
end
