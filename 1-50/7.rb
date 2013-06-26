
require 'prime'

gen = Prime::EratosthenesGenerator.new

n = 10001
(n - 1).times{gen.next}
puts gen.next

