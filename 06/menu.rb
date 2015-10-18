load 'module_instancecounter.rb'
load 'module_producer.rb'
require_relative 'station.rb'
require_relative 'train.rb'
require_relative 'cargo_train.rb'
require_relative 'passenger_train.rb'
require_relative 'route.rb'
require_relative 'railroadcar.rb'
require_relative 'cargo_car.rb'
require_relative 'passenger_car.rb'



# Меню
i = 10
while i == 10 do
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
end






# Тестовые данные
st1 = Station.new("Савеловская")
st2 = Station.new("Рабочий пос")
st3 = Station.new("Абрикосовая")
st4 = Station.new("Ялтинская")
st5 = Station.new("Жаворонки")

tr1 = Train.new(11, "Carg", 15)
tr2 = Train.new(22, "Pass", 80)
tr3 = Train.new(33, "Carg", 15)

rt1 = Route.new(st1, st2)
rt2 = Route.new(st2, st3)
rt3 = Route.new(st3, st1)

passcar1 = PassengerCar.new(54)
passcar2 = PassengerCar.new(36)
passcar3 = PassengerCar.new(12)

cargocar1 = CargoCar.new(100)
cargocar2 = CargoCar.new(150)
cargocar3 = CargoCar.new(50)

carg_tr1 = CargoTrain.new(11, "Carg", 15)
