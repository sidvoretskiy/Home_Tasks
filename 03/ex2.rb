puts "Введите число"
num = gets.chomp.to_i

arr = (1..num).to_a
sum = 0


index = 1
until index > num do
sum += index if index % 2 == 0
index += 1
end



puts "Сумма равна #{sum}.
Среднее арифметическое #{sum / arr.size.to_f}"
