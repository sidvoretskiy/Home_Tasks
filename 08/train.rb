class Train
attr_reader :number, :car_list, :speed, :type,
            :st, :route, :next_station, :prev_station
@@trains = []


include InstanceCounter, Validate

# Метод поиска нужного объекта по номеру

def self.find(number)
  @@trains.each do |i|
  return i if i.number == number
  end
  return nil

end
NUMBER_FORMAT = /\A\w{3}-\w{2}\z/i

  def initialize (number)
    @number = number
    validate!
    @speed = 0
    @car_list = {}
    @train = []
    register_instance
    @@trains << self
  end

  def validate!
    if NUMBER_FORMAT.match(@number.to_s) == nil
    raise FormatError, "Номер должен быть в формате #{NUMBER_FORMAT}"
    true
    end
  end

# Увеличение скорости
  def speed_up
    @speed += 10 if @speed <110
  end
# Уменьшение скорости
  def speed_down
    @speed -= 10 if @speed >0
  end
 # Добавление вагона
  def add_car(railroadcar)
    if @speed == 0 && @car_list.include?(railroadcar) == false
    i = 1
    while @car_list.values.include?(i) == true do
        i += 1
      end
    @car_list[railroadcar] = i
    railroadcar.number = i
    end
  end
# Удаление вагона
  def delete_car(railroadcar)
    if @car_list.key?(railroadcar) == true
    @car_list.delete(railroadcar)
    railroadcar.number = "Не присвоен"
    end
  end

# Получение маршрута
  def route=(route)
    @route = route
    @st = route.st_list[0]
    @st.accept(self)
  end
# Ехать до определенной станции
  def go_station(station)
    if @route.st_list.include?(station)
      @st.send(self)
      @st = station
      @st.accept(self)
      puts "Прибыли в #{@st.name}"
    end
  end
# Следующая станция
  def next_station
    if @route.st_list.index(@st) < (@route.st_list.size - 1)
    @next_station = @route.st_list[(@route.st_list.index(@st)+1)]
    else
    @next_station = nil
    end
  end
# Предыдущая станция
  def previous_station
    if @route.st_list.index(@st) != 0
    @previous_station = @route.st_list[(@route.st_list.index(@st)-1)]
    else
    @previous_station = nil
    end

  end

def move_next
  @st = next_station
  puts "Вы приехали. Станция: #{@st.name}"
  rescue
  puts "Вы на коенчной станции"
end

def move_back
  @st = previous_station
  puts "Вы приехали. Станция: #{@st.name}"
  rescue
  puts "Вы на коенчной станции"
end

include Producer

end
