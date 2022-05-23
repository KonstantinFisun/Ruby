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
end
