require_relative 'module_instancecounter.rb'
require_relative 'module_producer.rb'
require_relative 'module_validate.rb'
require_relative 'station.rb'
require_relative 'train.rb'
require_relative 'cargo_train.rb'
require_relative 'passenger_train.rb'
require_relative 'route.rb'
require_relative 'railroadcar.rb'
require_relative 'cargo_car.rb'
require_relative 'passenger_car.rb'

def class_printer(class_name)
  i = 0
  class_name.instances_list.each do |x|
    i += 1
    puts "#{i}: #{class_name} #{x.number}"
    end
end


# Меню
i = 10
while i != 0 do
puts "
1 - Создать станцию
2 - Создать маршрут
3 - Создать поезд
4 - Добавить вагон к поезду
5 - Отцепить вагоны от поезда
6 - Поместить поезд на станцию
7 - Загрузить/Разгрузить грузовой вагон
8 - Занять/Освободить место в пассажирском вагоне
9 - Просмотреть список станций и поездов на них
0 - Выход"
i = gets.to_i
puts "\e[2J\e[f"
case i
when 1
  puts "Введите название станции"
  Station.new(gets.chomp)
when 2
  puts "Введите начальную и конечную станцию"
  a = gets.chomp
  b = gets.chomp
  Route.new(a,b)
when 3
  puts "Введите номер поезда. Формат ввода: ХХХ-ХХ"
  Train.new(gets.chomp)
when 4
  puts "Выберите тип поезда (1 - CargoTrain, 2 - PassengerTrain)"
  chose = gets.to_i
  case chose
    when 1
    puts "Грузовые поезда:"
    class_printer(CargoTrain)
    train = CargoTrain.instances_list[gets.to_i-1]
    puts "Грузовые вагоны:"
    class_printer(CargoCar)
    can_number = gets.chomp
    train.add_car(car)

    when 2
    puts "Пассажирские поезда:"
    class_printer(PassengerTrain)
    tr = gets.chomp
    train = CargoTrain.instances_list[tr-1]
    else

  end

  tr = gets.chomp
  train = Train.instances_list[tr-1]
  puts "Выберите вагон:"
  class_printer(CargoCar) if train.
  class_printer(PassengerCar)
  ii = 0
  Train.instances_list.each do |x|
    ii += 1
    puts "#{ii}: Поезд #{x.number}"
    end

when 5



end
puts "\e[2J\e[f"

end









# Тестовые данные
st1 = Station.new("Савеловская")
st2 = Station.new("Рабочий пос")
st3 = Station.new("Абрикосовая")
st4 = Station.new("Ялтинская")
st5 = Station.new("Жаворонки")

tr1 = Train.new("AAA-11")
tr2 = Train.new("BBB-22")
tr3 = Train.new("DDD-33")

rt1 = Route.new(st1, st2)
rt2 = Route.new(st2, st3)
rt3 = Route.new(st3, st1)

passcar1 = PassengerCar.new(54)
passcar2 = PassengerCar.new(36)
passcar3 = PassengerCar.new(12)

cargocar1 = CargoCar.new(100)
cargocar2 = CargoCar.new(150)
cargocar3 = CargoCar.new(50)

carg_tr1 = CargoTrain.new("FFF-11")
