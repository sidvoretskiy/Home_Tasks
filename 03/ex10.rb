# Сделать хеш, содеращий месяцы и количество дней в месяце.
# В цикле выводить те месяцы, у которых количество дней
# ровно 30

calendar = {jan: 31, feb: 28, mar: 31, apr: 30,
            may: 31, jun: 30, jul: 31, aug: 31,
            sep: 30, oct: 31, nov: 30, dec: 31}

calendar.each do |month,days|
  puts "Месяц #{month} имеет 30 дней" if days == 30
end
