

def to_digits(n)
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a
end


org = (0..9).to_a

result = []

# 超力技のループ。orz...
1.upto(1000/17) {|k|
  d17 = k*17
  a17 = to_digits(d17)
  a17 << 0 if d17 < 100
  next if a17.uniq.size < 3
  rest13 = org - a17
  rest13.each{|i13|
    d13 = i13*100 + d17/10
    next unless d13%13 == 0
    rest11 = rest13 - [i13]
    rest11.each{|i11|
      d11 = i11*100 + d13/10
      next unless d11%11 == 0
      rest7 = rest11 - [i11]
      rest7.each{|i7|
        d7 = i7*100 + d11/10
        next unless d7%7 == 0
        rest5 = rest7 - [i7]
        rest5.each{|i5|
          next unless i5.even?
          d5 = i5*100 + d7/10
          next unless d5%5 == 0
          rest3 = rest5 - [i5]
          rest3.each{|i3|
            d3 = i3*100 + d5/10
            next unless d3%3 == 0
            rest2 = rest3 - [i3]
            rest2.permutation{|a|
              result << [a17, i13, i11, i7, i5, i3, a].flatten
            }
          }
        }
      }
    }
  }
}

puts result.map{|a| a.reverse.inject(0){|r, i| r = r*10 + i}}.inject(:+)
