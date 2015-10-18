puts "Введите стороны треуголника a b c"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
sum = 0
sum = sum + 1 if a == b
sum = sum + 1 if b == c
sum = sum + 1 if a == c

case sum
when 1
  puts "Треугольник равнобедренный"
when 3
  puts "Треугольник равносторонний"
else
  puts "Треугольник обычный"
end
