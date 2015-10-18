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
