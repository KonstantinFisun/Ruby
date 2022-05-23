path = File.dirname(__FILE__) 
require "#{path}/Department.rb"

class Department_list
def initialize(list_)
    @departments = list_
    @index = -1
  end

  def add_n(department)
    @departments.push(department)
  end

  def choose_n(index)
    if @departments.length > index and index >= 0 then
      @index = index
    else raise ArgumentError.new("Ошибка : Индекс за пределами массива")
    end
  end

 
  def change_n(department)
    @departments[@index] = department
  end

  
  def get_n
    @departments[@index]
  end

  
  def delete_n
    @departments.delete_at(@index)
    @index = -1
  end

  def to_s
    s = ""
    @departments.each_index{|i| s += "Отдел - #{i}\n#{@departments[i]}"}
    s
  end
      
  def Department_list.read_from_txt(file)
    file = File.new(file, "r")
    list_ = [] 
    for line in file.readlines
      component = line.chomp.split(';')
      list_.push(d = Department.new(component[0], component[1]))
      component[2].split(',').each{|x| d.duty_add(x)} # Добавили обязанности
    end
    file.close()
    @departments = list_
  end

 
  def Department_list.write_to_txt(file)
    File.open(file, "w") do |f|
      @departments.each{|x| f.puts("#{x.name};#{x.phone};#{x.duty_write_txt}")}
    end
  end

 
 def Department_list.read_from_yaml(file)
    store = YAML::Store.new file
    list_departments = ""
    File.open(file, 'r') do |f|
      while (line = f.gets)
        list_departments += line
      end
    end
    store.load(list_)
    @departments = list_
  end

 
  def Department_list.write_to_yaml(file)
    File.open(file,"w") do |f|
      f.puts YAML.dump(@departments)
    end


  def Department_list.deserialize_yaml(file)
    @index = -1
    @dep_list = Department_list.read_from_yaml(file)
  end

  def Department_list.deserialize_txt(file)
    @index = -1
    @dep_list = Department_list.read_from_txt(file)
  end
 end
end
