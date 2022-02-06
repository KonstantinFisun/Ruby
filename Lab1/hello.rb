#Задание 1.1-1.2
if ARGV.length == 1
    puts "Привет, " + ARGV[0]
else
    puts "Введи правильно: ruby hello.rb имя"
end
#Задание 1.3
language = STDIN.gets.chomp 
case language
    when "ruby","Ruby", "руби"
        puts "Выходит, что ты подлиза"
    when "python","Python", "питон"
        puts "Python тоже хорош"
    when "c#","C#", "с#", "сишарп"
        puts "Неплохой выбор, но мне не зашло"
    when "java", "Java","джава", "ява"
        puts "Интересно"
    when "kotlin","Kotlin", "котлин"
        puts("Будет полезен")
    else
        puts("#{language}? Хм, не знаю такого, но ты всё равно попробуй Ruby")
end
#Задание 1.4
puts "Привет, введи команду ОС:"
com1 = STDIN.gets

puts "Привет, введи команду Ruby:"
com2 = STDIN.gets

puts "Команда ОС:"
system(com1)

puts "Команда Ruby:"
puts eval(com2)
