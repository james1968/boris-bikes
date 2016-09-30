require_relative 'bike'


class Garage

  @garage_bike = []


  def receive_bike(bike)

    @garage_bike << bike

  end


  def deliver_bike(bike)

    @garage_bike.pop

  end

end
