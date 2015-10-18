puts "Введите дату ДД ММ ГГГГ"
day = gets.chomp.to_i
month = gets.chomp.to_i
year = gets.chomp.to_i

case month
when 2
day = day + 31
when 3
day = day + 59
when 4
day = day + 90
when 5
day = day + 120
when 6
day = day + 151
when 7
day = day + 181
when 8
day = day + 212
when 9
day = day + 243
when 10
day = day + 273
when 11
day = day + 304
when 12
day = day + 334
end










# Год является високосным в двух случаях:
# либо он кратен 4, но при этом не кратен 100,
# либо кратен 400. Год не является високосным,
# если он не кратен 4, либо он кратен 100,
# но при этом не кратен 400

if (year % 4 == 0 && year % 100 != 0 && month > 1) || year % 400 == 0
  puts "Это #{day+1} день года. Год високосный"
else
  puts "Это #{day} день года. Год не високосный"
end
