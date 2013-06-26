require 'prime'

N = 1000
$primes = Prime.each(N).to_a

def exponet_of_factor(val, factor)
  cnt = 0
  while val%factor == 0
    val /= factor
    cnt += 1
  end
  cnt
end

def divisors(n)
  return [1] if n == 1

  ary = []
  $primes.take_while{|p| p <= n}.each{|p|
    exp = exponet_of_factor(n, p)
    next if exp == 0
    a = [1]
    exp.times{a << a.last*p}
    ary << a
  }
  base = ary.pop
  return base if ary.empty?
  return base.product(*ary).map{|a| a.inject(:*)}.sort
end


len_max = 0
p_max = nil
$primes.each{|p|
  len = nil
  divisors(p - 1).each{|n|
    if (10**n)%p == 1
      len = n
      break
    end
  }
  len ||= 0
  if len > len_max
    len_max = len
    p_max = p
  end
}

puts p_max


