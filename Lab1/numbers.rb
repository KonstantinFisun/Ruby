#ex2.1
number = ARGV[0].to_i.abs
sum = 0
while number != 0
  sum += number % 10
  number /= 10
end
puts sum
