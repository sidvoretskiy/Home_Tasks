class Station
attr_reader :name, :list

@@stations = []


# Выводим все объекты

def self.all
  @@stations
end

 def initialize (name)
   @name = name
   @list = []
   validate!
   @@stations << self
 end


def validate!
  raise ArgumentError, "Имя не может быть короче 6 символов" if name.to_s.length < 6
  true
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

 def block
  @list.map {|x| yield(x)}
 end

end
