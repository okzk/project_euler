
days_of_month_on_non_leap_year = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]


w = 1
1.upto(12) {|m|
  w += days_of_month_on_non_leap_year[m]
  w %= 7
}

cnt = 0
1901.upto(2000) {|y|
  1.upto(12){|m|
    cnt += 1 if w == 0
    w += days_of_month_on_non_leap_year[m]
    w += 1 if m == 2 && y%4 == 0
    w %= 7
  }
}
puts cnt
