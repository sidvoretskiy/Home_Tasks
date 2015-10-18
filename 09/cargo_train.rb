class CargoTrain < Train
  def add_car(cargo_car)
    if cargo_car.class == CargoCar
      super
    else
      puts "Неверный тип вагона"
    end
  end

end
