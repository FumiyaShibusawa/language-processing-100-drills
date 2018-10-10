# 06. 集合
# 'paraparaparadise'と'paragraph'に含まれる文字bi-gramの集合を，それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．
# さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．

# 'paraparaparadise' bi-gram
x = []
'paraparaparadise'.chars.each_cons(2) { |w| x << w.join('') }
puts "X: #{x}"

# 'paragraph' bi-gram
y = []
'paragraph'.chars.each_cons(2) { |w| y << w.join('') }
puts "Y: #{y}"

# 和集合
puts "和集合: #{x | y}"

# 積集合
puts "積集合: #{x & y}"

# 差集合
puts "差集合: #{x - y}"
