puts "Введите число"
num = gets.chomp.to_i


arr = (1..num).to_a
sum = 1


index = 1
until index > num do
sum *= index
index += 1

end



puts "Факториал равен #{sum}."

