denominators = []
numerators = []

1.upto(9) {|a|
  1.upto(9) {|b|
    n1 = a*10 + b
    1.upto(9) {|c|
      n2 = c*10 + a
      if n1 != n2 && n1 * c == b * n2
        if n1 > n2
          denominators << n1
          numerators << n2
        else
          denominators << n2
          numerators << n1
        end
      end
    }

  }
}

denominator = denominators.inject(:*)
numerator = numerators.inject(:*)

puts denominator / denominator.gcd(numerator)

