require 'bike.rb'

describe Bike do
  it 'should respomd to working?' do
    expect(subject).to respond_to :working?
  end
end
