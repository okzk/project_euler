require 'prime'

# 9, 8, 6, 5, 3, 2桁のpandigital数は3の倍数なので素数ではない。


(1..7).to_a.reverse.permutation{|a|
  n = a.inject(0){|r,i| r = r*10 + i}
  if n.prime?
    puts n
    exit
  end
  puts n if n.prime?
}

(1..4).to_a.reverse.permutation{|a|
  n = a.inject(0){|r,i| r = r*10 + i}
  if n.prime?
    puts n
    exit
  end
  puts n if n.prime?
}
