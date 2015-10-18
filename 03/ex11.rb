# Заполнить хеш гласными буквами, где значением будет являтся
# порядковый номер буквы в алфавите (a - 1).

alf = ('А'..'Я').to_a
alf_gl = ['А','Е','И','О','У','Ы','Э','Ю','Я']
index = 0
gl = {}
for i in alf do
  index += 1
gl[index.to_s] = i if alf_gl.include?(i)
  end
puts gl.inspect
