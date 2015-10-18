puts "Привет, %username%, как тебя зовут?"
name = gets
puts "%username%, какой твой рост?"
height = gets.chomp.to_i
puts "%username, твой оптимальный вес #{height - 110}"
