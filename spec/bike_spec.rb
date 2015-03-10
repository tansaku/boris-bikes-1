require 'bike'

describe Bike do
  it 'is not broken after we create it' do
    expect(subject).not_to be_broken
  end
end
