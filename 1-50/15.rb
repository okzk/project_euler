
x = 20
y = 20
factorial_list = [1]
(x + y).times{|i| factorial_list << factorial_list.last*(i+1)}

# 二項定理
puts factorial_list[x + y]/factorial_list[x]/factorial_list[y]

