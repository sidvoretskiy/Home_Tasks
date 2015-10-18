puts "Введите число"
num = gets.chomp.to_i

arr = (1..num).to_a
sum = 0


# Решение через for

# for i in arr do
#   sum += i
# end


# Решение через while
index = 1
while index <= num do
sum += index
index += 1
end


index = 1
until index > num do
sum += index
index += 1
end



puts "Сумма равна #{sum}.
Среднее арифметическое #{sum / arr.size.to_f}"
