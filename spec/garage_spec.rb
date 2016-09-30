require 'garage'

describe 'receive bike' do

it 'receives broken bikes from vans' do
  bike = Bike.new
  subject.receive_bike(bike)
  expect { subject.receive_bike }.to eq bike
end
end

describe 'deliver bike' do

it 'distributes working bikes to vans' do
  bike = Bike.new
  subject.deliver_bike
  expect { subject.deliver_bike }.to eq bike
end

end
