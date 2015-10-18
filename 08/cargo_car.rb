class CargoCar < RailroadCar

  def load (value)
    if super(value) != false
    puts "В вагон добавлено груза: #{value}"
    else
    puts "Невозможно добавить такое количество груза"
    end
  end

  def unload(value)
    if super(value) != false
    puts "Из вагона удалено груза: #{value}"
    else
    puts "Невозможно добавить такое количество груза"
    end
  end

  def available
    puts "Свободный объем: #{super}"
  end

  def occupied
    puts "Занятый объем: #{super}"
  end
end
