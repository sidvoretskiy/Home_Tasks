class RailroadCar

attr_accessor :number
attr_reader :occupied

  def initialize(max_value)
    @max_value = max_value
    @occupied = 0
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
