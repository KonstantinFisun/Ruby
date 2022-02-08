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
#ex2.3.1
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
#ex2.3.2
def pr_numbersne5(number)
  pr=1
  while number != 0
    pr*= number % 10 if number % 10 !=5
    number /= 10
  end
puts pr
end
#ex2.3.3
require 'prime'

def pr_numbers(number)
  pr=1
  while number != 0
    pr*= number % 10
    number /= 10
  end
return pr
end 
def gcd(a, b)
  if a % b == 0
    b
  else
    gcd(b, a % b)
  end
end

arr=[]
res=[]
puts 'Введите первое число' 
one_number = gets.chomp.to_i 
(1...one_number).each do |i|
  arr<<i if one_number%i == 0
end
puts "Произведение цифр числа"
puts pr_numbers(one_number)
puts"Массив делителей числа"
print arr

puts "\nПромежуточный результат "
arr.each { |x| x%2!=0 and (x.prime?)==false and res<<x and puts x}
puts"Ответ"
puts gcd(pr_numbers(one_number),res.max)

#number = ARGV[0].to_i.abs
#pr_numbers(number)
#top_prime(number)
#pr_numbersne5(number)
