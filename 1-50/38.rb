
def to_digits(n)
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a
end

def pandigital?(n)
  return false if n < 123456789 || n > 987654321
  digs = to_digits(n)
  return false if digs.include? 0
  return digs.uniq.size == 9
end



# 最大のpandigital 9-digit numberは問題から9xxxxxxxxであることは明らか。
# 最上位が9であることから、掛けられる数は9, 9x, 9xx, 9xxx, ...である必要がある。
# 9の時、n = 5, 
# 9xの時、連結数がちょうど9桁になるnは存在しない、
# 9xxの時、連結数がちょうど9桁になるnは存在しない、
# 9xxxの時、n = 2
# n = 5の時は問題分から連結数が918273645であることは分かっているので
# n = 2の時を考える


[9,8,7,6,5,4,3,2,1].permutation(4) {|a|
  m = a.inject(0){|r, i| r = r*10 + i}
  # 連結数
  con = m*100000 + m*2

  # n = 5の方が大きい場合は、918273645を出力して抜ける。
  if con < 918273645
    puts 918273645
    exit
  end
  
  # n = 2 で最初に見つかったらそれが最大なので出力して終了
  if pandigital?(con)
    puts con
    exit
  end

}




