def sum(arr)
  summ = 0
  for arg in arr
    summ += arg
  end
  return summ
end

def proi(arr)
  pr = 1
  for arg in arr
    pr *= arg
  end
  return pr
end

def mins(arr) 
  min = arr.first
  for arg in arr
    if min > arg 
      min = arg
    end
  end
  return min
end

def maxs(arr)
  max = arr.first
  for arg in arr
    if max < arg
      max = arg
    end
  end
  return max
end

puts "Введите последовательность (0 для завершения) "
ar_num = gets.chomp.to_i
array = []
while ar_num !=0
  array << ar_num
  ar_num = gets.chomp.to_i
end
print "Список: ", array
puts ""
print "Сумма списка: ", sum(array)
puts ""
print "Произведение списка: ", proi(array)
puts ""
print "Минимум списка: ", mins(array)
puts ""
print "Максимум списка: ", maxs(array)
puts ""
