# Заполнить массив числами от 10 до 100 с шагом 5

arr = [0,1]
i = 0
while arr[i] + arr[i+1]  <= 100 do
  arr << arr[i] + arr[i+1]
  i += 1
  puts arr.inspect
end

puts arr.inspect
