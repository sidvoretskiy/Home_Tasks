class PassengerTrain < Train

  def add_car(passenger_car)
    if passenger_car.class == PassengerCar
      super
    else
      puts "Неверный тип вагона"
    end

  end
end
