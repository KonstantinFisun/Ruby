if ARGV.length == 1
    puts "Привет, " + ARGV[0]
else
    puts "Введи правильно: ruby hello.rb имя"
end
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
