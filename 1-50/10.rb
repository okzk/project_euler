require 'prime'

N = 2000000
puts Prime.each(N).inject(:+)
