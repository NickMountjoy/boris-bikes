require "bike"

describe Bike do
  it 'will respond to working' do
    expect(subject).to respond_to(:working?)
  end
end