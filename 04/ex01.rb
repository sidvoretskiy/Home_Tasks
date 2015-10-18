class Station
attr_reader :name

 def initialize (name)
   @name = name
   @list = []
 end

 def accept (train)
   @list << train
 end

 def print(type = "all")
   puts "Список поездов:"
   @list.each do |train|
    puts "Поезд № #{train.number}" if type == "all" || type == train.type
   end
 end

 def send (train)
   @list.delete(train)
 end

end

class Train
attr_reader :number, :length, :speed, :type,
            :st, :route


  def initialize (number,type,length)
    @number = number
    @type = type
    @length = length
    @speed = 0

  end
# Увеличение скорости
  def speed_up
    @speed += 10 if @speed <110
  end
# Уменьшение скорости
  def speed_down
    @speed -= 10 if @speed >0
  end
# Изменение количества вагонов
  def length_change(fun)
    @length += 1 if fun == "+" && @speed == 0
    @length -= 1 if fun == "-" && @length > 0 && @speed == 0
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
# Следующая станция (по умолчанию показать при true - ехать)
  def next_station (move = false)
    i = 0
      @route.st_list.each do |station|
        if @st == station && @route.st_list[(i + 1)] != nil
          if move == true
            @st.send(self)
            @st = @route.st_list[(i + 1)]
            @st.accept(self)
            puts "Прибыли в #{@st.name}"
            break
          else
            puts "Следующая остановка #{@route.st_list[(i + 1)].name}"
          end
        end
        i +=1
      end
  end
# Предидущая станция (по умолчанию показать при true - ехать)
  def prev_station (move = false)
    i = 0
    @route.st_list.each do |station|
      if @st == station && i - 1 >= 0
        if move == true
          @st.send(self)
          @st = @route.st_list[(i - 1)]
          @st.accept(self)
          puts "Прибыли в #{@st.name}"
        else
          puts "Предидущая остановка #{@route.st_list[(i - 1)].name}"
        end
      end
      i +=1
    end
  end

end

class Route
  attr_accessor :start_station, :end_station, :st_list

  def initialize (start_station, end_station)
    @start_station = start_station
    @end_station = end_station
    @st_list = [@start_station, @end_station]
  end

  def add_st (station)
    if @st_list.include?(station) == false
    @st_list[(@st_list.size - 1)] = station
    @st_list << @end_station
    end
  end

  def del_st (station)
    @st_list.delete(station) if @st != @start_station &&
                                @st != @end_station
  end

  def print (sort = false)
    list = []
    @st_list.each do |station|
      list << station.name
    end
    list = list.sort if sort == true

    puts list
  end

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
