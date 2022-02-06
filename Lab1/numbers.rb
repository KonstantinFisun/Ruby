#ex2.1
number = ARGV[0].to_i.abs
sum = 0
while number != 0
  sum += number % 10
  number /= 10
end
puts sum

#ex2.2
def sum_numbers(number)
sum = 0
while number != 0
  sum += number % 10
  number /= 10
end
puts sum
end
def max_numbers(number)
 max = number % 10
while number != 0
   n= number % 10
   max=n if max<n 
  number /= 10
end
puts max
end

def min_numbers(number)
 min = number % 10
while number != 0
   n= number % 10
   min=n if min>n 
  number /= 10
end
puts min
end

def pr_numbers(number)
  pr=1
  while number != 0
    pr*= number % 10
    number /= 10
  end
puts pr
end

  def top_prime(n) 
      max = n
      lower = 2

      while lower < max
         while max % lower == 0 && max != lower
           max = max / lower
         end
      lower = lower+1
      end
      max
      puts max
    end

number = ARGV[0].to_i.abs
#pr_numbers(number)
#top_prime(number)
