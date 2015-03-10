require 'bike'

describe Bike do
  it 'is not broken after we create it' do
    expect(subject).not_to be_broken
  end

  it 'can be broken' do
    subject.break
    expect(subject).to be_broken
  end

  it 'can be fixed' do
    subject.break
    subject.fix
    expect(subject).not_to be_broken
  end
end
