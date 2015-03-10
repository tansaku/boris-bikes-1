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
end
