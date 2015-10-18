puts "Введите число"
num = gets.chomp.to_f
if  num % 2 == 0
  puts "Число #{num} делится на 2"
else
  puts "Число #{num} не делится на 2"
end
