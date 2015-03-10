require 'docking_station'

describe DockingStation do
  it 'accepts bikes' do
    expect { subject.dock :bike }.to change(subject, :bike_count).from(0).to(1)
  end
end
