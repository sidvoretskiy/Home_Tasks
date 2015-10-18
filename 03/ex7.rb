# Запросить у пользователя кол-во студентов в группе.
# Для каждого студента запросить оценку по 100-бальной шакле,
# вывести среднюю оценку группы. Для решения использовать массивы.

puts "Введите количество студентов в группе"
quantity = gets.chomp.to_i
i = 1
puts "Введите оценки студентов по 100 бальной шкале"
evaluation = []

while i <= quantity do
  puts "Введите оценку #{i}-ого студента"
  mark = gets.chomp.to_i
    if 0 < mark && mark <= 100
      evaluation << mark
      i += 1
    else puts "Оценка не соответсвует шкале"

  end
end

sum = 0
for mark in evaluation do
  sum += mark
  end

puts "Средняя оценка по группе = #{sum/evaluation.size.to_f}"
