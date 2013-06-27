
# 重複がある[基数, 指数]の組み合わせをマーク
base_exp = Array.new(100 + 1)
2.upto(Math.sqrt(100).to_i) {|b|
  next if base_exp[b]
  n = 1
  1.upto(100) {|e|
    n *= b
    break if n > 100
    base_exp[n] = [b, e]
  }
}


sum = 0
a = []
2.upto(100) {|b|
  foo = base_exp[b]
  if foo
    # 重複があるものは[基数, 指数]を取り出しておく
    2.upto(100) {|e|
      a << [foo[0], foo[1]*e]
    }
  else
    # 重複がないのは指数分の個数がそのまま
    sum += 99
  end
}

puts a.uniq.size + sum

