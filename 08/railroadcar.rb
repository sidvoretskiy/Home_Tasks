class RailroadCar

attr_accessor :number
attr_reader :occupied

include InstanceCounter

  def initialize(max_value)
    @max_value = max_value
    @occupied = 0
    validate!
  end

  def validate!
    raise ArgumentError, "Объем должен быть числом" if @max_value.class != Fixnum &&
                                                       @max_value.class != Float
    raise ArgumentError, "Объем должен быть больше 0" if @max_value <= 0
    true
  end

  def load(value)
    if (@occupied + value) <= @max_value
      @occupied += value
    else false
    end
  end

  def unload(value)
    if (@occupied - value) >= 0
      @occupied -= value
    else false
    end
  end

  def available
    @max_value - @occupied
  end

 include Producer

end
