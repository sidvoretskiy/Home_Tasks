class PassengerCar < RailroadCar

  def load (value)
    if super(value) != false
    puts "В вагон добавлено #{value} человек"
    else
    puts "Невозможно добавить такое количество людей"
    end
  end

  def unload(value)
    if super(value) != false
    puts "Из вагона высажено #{value} человек"
    else
    puts "Невозможно высадить такое количество человек"
    end
  end

  def available
    puts "Свободно мест: #{super}"
  end

  def occupied
    puts "Занято мест: #{super}"

  end

end
