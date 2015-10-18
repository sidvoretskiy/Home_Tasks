puts "Введите стороны треуголника a b c"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
sum = 0
sum = sum + 1 if a == b
sum = sum + 1 if b == c
sum = sum + 1 if a == c
if a >= b
  if a >= c
    sum = sum + 5 if a ** 2 == b ** 2 + c ** 2
  else
    sum = sum + 5 if c ** 2 == b ** 2 + a ** 2
  end
elsif c >= b
  sum = sum + 5 if c ** 2 == b ** 2 + a ** 2
else
  sum = sum + 5 if b ** 2 == c ** 2 + a ** 2
end




case sum
when 1
  puts "Треугольник равнобедренный"
when 3
  puts "Треугольник равносторонний"
when 5
  puts "Треугольник прямоугольный"
when 6
  puts "Треугольник прямоугольный и равнобедренный"
else
  puts "Треугольник обычный"
end
