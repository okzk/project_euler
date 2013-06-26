
n1 = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
n2 = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

sum_1_9 = n1.inject(0){|r, s| r += s.length}

sum_10_19 = n2.inject(0){|r, s| r += s.length}

n3 = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']


sum_20_99 = n3.inject(0){|r, s| r += s.length*10 + sum_1_9}

sum_1_99 = sum_1_9 + sum_10_19 + sum_20_99

sum_100_999 = n1.inject(0){|r, s| r += (s.length + 'hundred'.length)*100 + 'and'.length*99 + sum_1_99}

puts sum_1_99 + sum_100_999 + 'one'.length + 'thousand'.length

